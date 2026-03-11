import 'package:flutter/material.dart';

class ResponsiveAdapter {
  final BuildContext context;

  ResponsiveAdapter(this.context);

  /// Breakpoint for tablet screens
  static const double tabletBreakpoint = 600.0;

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

  /// Get the ResponsiveAdapter from the widget tree
  static ResponsiveAdapter? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ResponsiveInherited>()?.adapter;
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

/// Extension on BuildContext for easy access to responsive adapter
extension ResponsiveContext on BuildContext {
  /// Get the responsive adapter for this context
  ResponsiveAdapter get responsive => ResponsiveAdapter(this);

  /// Scale any value responsively
  double scale(double value) => responsive.scale(value);

  /// Text Responsiveness
  double responsiveFont(double mobile, {double? smallMobile, double? tablet, double? largerTables}) {
    double width = MediaQuery.of(this).size.width;

    if (width >= 1000 && largerTables != null) return largerTables;
    if (width >= 600 && tablet != null) return tablet;
    if (width < 420 && smallMobile != null) return smallMobile;

    return mobile;
  }
}
