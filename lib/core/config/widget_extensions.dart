
import 'package:flutter/material.dart';
import 'package:technical_assesment/core/constants/app_spacing.dart';
import 'package:technical_assesment/core/config/responsive_adapter.dart';


extension WidgetExtensions on Widget{
  Widget onTap(
      void Function()? function, {
        Color? splashColor,
        Color? hoverColor,
        Color? highlightColor,
        BorderRadius? borderRadius,
        bool isTransparent = false,
      }) {
    return Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      child: InkWell(
        onTap: function,
        splashColor: splashColor ?? Colors.transparent,
        hoverColor: isTransparent ? Colors.transparent : hoverColor,
        highlightColor: isTransparent ? Colors.transparent : highlightColor,
        borderRadius: borderRadius,
        child: this,
      ),
    );
  }
}
extension PaddingExtension on Widget {
  /// return padding top
  Widget paddingTop(double top) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledTop = adapter?.scale(top) ?? top;
        return Padding(padding: EdgeInsets.only(top: scaledTop), child: this);
      },
    );
  }

  /// return padding left
  Widget paddingLeft(double left) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledLeft = adapter?.scale(left) ?? left;
        return Padding(padding: EdgeInsets.only(left: scaledLeft), child: this);
      },
    );
  }

  /// return padding Directional
  Widget paddingStart(double start) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledStart = adapter?.scale(start) ?? start;
        return Padding(padding: EdgeInsetsDirectional.only(start: scaledStart), child: this);
      },
    );
  }

  /// return padding end
  Widget paddingEnd(double end) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledEnd = adapter?.scale(end) ?? end;
        return Padding(padding: EdgeInsetsDirectional.only(end: scaledEnd), child: this);
      },
    );
  }

  /// return padding right
  Widget paddingRight(double right) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledRight = adapter?.scale(right) ?? right;
        return Padding(padding: EdgeInsets.only(right: scaledRight), child: this);
      },
    );
  }

  /// return padding bottom
  Widget paddingBottom(double bottom) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledBottom = adapter?.scale(bottom) ?? bottom;
        return Padding(padding: EdgeInsets.only(bottom: scaledBottom), child: this);
      },
    );
  }

  /// return padding all
  Widget paddingAll(double padding) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledPadding = adapter?.scale(padding) ?? padding;
        return Padding(padding: EdgeInsets.all(scaledPadding), child: this);
      },
    );
  }

  /// return padding Symmetric
  Widget paddingSymmetric(double horizontal, double vertical) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledVertical = adapter?.scale(vertical) ?? vertical;
        final scaledHorizontal = adapter?.scale(horizontal) ?? horizontal;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: scaledVertical, horizontal: scaledHorizontal),
          child: this,
        );
      },
    );
  }

  /// return padding verticaL
  Widget paddingVertical(double padding) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledPadding = adapter?.scale(padding) ?? padding;
        return Padding(padding: EdgeInsets.symmetric(vertical: scaledPadding), child: this);
      },
    );
  }

  /// return padding horizontal
  Widget paddingHorizontal(double padding) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledPadding = adapter?.scale(padding) ?? padding;
        return Padding(padding: EdgeInsets.symmetric(horizontal: scaledPadding), child: this);
      },
    );
  }

  /// return custom padding from each side
  Widget paddingOnly({double top = 0.0, double left = 0.0, double bottom = 0.0, double right = 0.0}) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledTop = adapter?.scale(top) ?? top;
        final scaledLeft = adapter?.scale(left) ?? left;
        final scaledBottom = adapter?.scale(bottom) ?? bottom;
        final scaledRight = adapter?.scale(right) ?? right;
        return Padding(
          padding: EdgeInsets.fromLTRB(scaledLeft, scaledTop, scaledRight, scaledBottom),
          child: this,
        );
      },
    );
  }

  /// return directional padding
  Widget paddingDirectionalOnly({double top = 0.0, double start = 0.0, double bottom = 0.0, double end = 0.0}) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledTop = adapter?.scale(top) ?? top;
        final scaledStart = adapter?.scale(start) ?? start;
        final scaledBottom = adapter?.scale(bottom) ?? bottom;
        final scaledEnd = adapter?.scale(end) ?? end;
        return Padding(
          padding: EdgeInsetsDirectional.only(
            top: scaledTop,
            bottom: scaledBottom,
            start: scaledStart,
            end: scaledEnd,
          ),
          child: this,
        );
      },
    );
  }

  /// return directional padding all
  Widget paddingDirectionalAll({double padding = 0}) {
    return Builder(
      builder: (context) {
        final adapter = ResponsiveAdapter.maybeOf(context);
        final scaledPadding = adapter?.scale(padding) ?? padding;
        return Padding(padding: EdgeInsetsDirectional.all(scaledPadding), child: this);
      },
    );
  }

  // AppSpacing convenience methods sll sides
  Widget paddingAllXxs() => paddingAll(AppSpacing.xxs);
  Widget paddingAllXs() => paddingAll(AppSpacing.xs);
  Widget paddingAllSm() => paddingAll(AppSpacing.sm);
  Widget paddingAllMd() => paddingAll(AppSpacing.md);
  Widget paddingAllLg() => paddingAll(AppSpacing.lg);
  Widget paddingAllXl() => paddingAll(AppSpacing.xl);

  // AppSpacing convenience methods vertical
  Widget paddingVerticalXxs() => paddingVertical(AppSpacing.xxs);
  Widget paddingVerticalXs() => paddingVertical(AppSpacing.xs);
  Widget paddingVerticalSm() => paddingVertical(AppSpacing.sm);
  Widget paddingVerticalMd() => paddingVertical(AppSpacing.md);
  Widget paddingVerticalLg() => paddingVertical(AppSpacing.lg);
  Widget paddingVerticalXl() => paddingVertical(AppSpacing.xl);

  // AppSpacing convenience methods horizontal
  Widget paddingHorizontalXxs() => paddingHorizontal(AppSpacing.xxs);
  Widget paddingHorizontalXs() => paddingHorizontal(AppSpacing.xs);
  Widget paddingHorizontalSm() => paddingHorizontal(AppSpacing.sm);
  Widget paddingHorizontalLg() => paddingHorizontal(AppSpacing.lg);
  Widget paddingHorizontalXl() => paddingHorizontal(AppSpacing.xl);
}
