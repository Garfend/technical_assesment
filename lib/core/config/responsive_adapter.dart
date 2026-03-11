import 'package:flutter/material.dart';
import 'package:technical_assesment/core/constants/app_spacing.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';

class ResponsiveAdapter {
  final BuildContext context;

  ResponsiveAdapter(this.context);

  /// Breakpoint for tablet screens
  static const double tabletBreakpoint = 600.0;

  /// Base design width
  static const double baseDesignWidth = 375.0;

  /// Get screen width
  double get screenWidth => MediaQuery.of(context).size.width;

  /// Get screen height
  double get screenHeight => MediaQuery.of(context).size.height;

  /// is tablet or larger
  bool get isTablet => screenWidth >= tabletBreakpoint;

  /// Check if current device is mobile
  bool get isMobile => screenWidth < tabletBreakpoint;

  /// Get the scale factor based on screen size
  double get scaleFactor {
    if (isTablet) {
      return 1.3;
    }
    return 1.0;
  }

  /// Scale a value based on the current screen size
  double scale(double value) {
    return value * scaleFactor;
  }

  /// Scale a font size based on the current screen size
  double scaleFont(double fontSize) {
    return fontSize * scaleFactor;
  }

  /// Get responsive spacing values
  ResponsiveSpacing get spacing => ResponsiveSpacing(this);

  /// Get responsive radius values
  ResponsiveRadius get radius => ResponsiveRadius(this);

  /// Get the ResponsiveAdapter from the widget tree
  static ResponsiveAdapter? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ResponsiveInherited>()?.adapter;
  }

  /// Get the ResponsiveAdapter from the widget tree
  static ResponsiveAdapter of(BuildContext context) {
    final adapter = maybeOf(context);
    assert(adapter != null, 'ResponsiveAdapter not found in context. Wrap your app with ResponsiveProvider.');
    return adapter ?? ResponsiveAdapter(context);
  }
}

/// InheritedWidget to provide ResponsiveAdapter throughout the widget tree
class _ResponsiveInherited extends InheritedWidget {
  final ResponsiveAdapter adapter;

  const _ResponsiveInherited({
    required this.adapter,
    required super.child,
  });

  @override
  bool updateShouldNotify(_ResponsiveInherited oldWidget) {
    return adapter.screenWidth != oldWidget.adapter.screenWidth ||
        adapter.screenHeight != oldWidget.adapter.screenHeight;
  }
}

/// Provider widget to inject ResponsiveAdapter into the widget tree
class ResponsiveProvider extends StatelessWidget {
  final Widget child;

  const ResponsiveProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return _ResponsiveInherited(
          adapter: ResponsiveAdapter(context),
          child: child,
        );
      },
    );
  }
}

/// Responsive spacing with automatic scaling
class ResponsiveSpacing {
  final ResponsiveAdapter adapter;

  ResponsiveSpacing(this.adapter);

  double get xxs => adapter.scale(AppSpacing.xxs);
  double get xs => adapter.scale(AppSpacing.xs);
  double get sm => adapter.scale(AppSpacing.sm);
  double get md => adapter.scale(AppSpacing.md);
  double get lg => adapter.scale(AppSpacing.lg);
  double get xl => adapter.scale(AppSpacing.xl);
}

/// Responsive radius with automatic scaling
class ResponsiveRadius {
  final ResponsiveAdapter adapter;

  ResponsiveRadius(this.adapter);

  double get card => adapter.scale(AppRadius.card);
  double get button => adapter.scale(AppRadius.button);
  double get circular => AppRadius.circular;
}

/// Extension on BuildContext for easy access to responsive adapter
extension ResponsiveContext on BuildContext {
  /// Get the responsive adapter for this context
  ResponsiveAdapter get responsive => ResponsiveAdapter(this);

  /// Quick access to responsive spacing
  ResponsiveSpacing get spacing => responsive.spacing;

  /// Quick access to responsive radius
  ResponsiveRadius get radius => responsive.radius;

  /// Check if current device is tablet
  bool get isTablet => responsive.isTablet;

  /// Check if current device is mobile
  bool get isMobile => responsive.isMobile;

  /// Get scale factor
  double get scaleFactor => responsive.scaleFactor;

  /// Scale any value responsively
  double scale(double value) => responsive.scale(value);

  /// Scale font size responsively
  double scaleFont(double fontSize) => responsive.scaleFont(fontSize);
}
