import 'package:flutter/material.dart';
import 'package:technical_assesment/core/config/responsive_adapter.dart';

extension DoubleExtensions on double {

  /// Leaves given height of space
  Widget get height {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledHeight = adapter?.scale(this) ?? this;
        return SizedBox(height: scaledHeight);
      },
    );
  }

  /// Leaves given width of space
  Widget get width {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledWidth = adapter?.scale(this) ?? this;
        return SizedBox(width: scaledWidth);
      },
    );
  }

  /// Get the scaled value for this double
  double scale(BuildContext context) {
    return context.scale(this);
  }

}