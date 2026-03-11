import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  // Primary brand
  static const Color gold = Color(0xFFE4B679);
  static const Color goldLight = Color(0xFFFEE5C4);

  // Gradients
  static const LinearGradient goldGradient = LinearGradient(
    colors: [gold, goldLight],
    stops: [0.5, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  // Scaffolding
  static const Color scaffoldBackground = Color(0xFF000000);

  // Neutrals
  static const Color cardDark = Color(0xFF323232);
  static const Color cardLightDark = Color(0xFF4A4A4A);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // Text
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);

  // Surface
  static const Color background = Color(0xFF000000);
  static const Color cardBackground = Color(0xFF323232);

  // Accent
  static const Color badgeGold = Color(0xFFE4B679);
  static const Color progressBarFill = Color(0xFFFEE5C4);
  static const Color progressBarTrack = Color(0xFF323232);

  // drop shadow
  static const Color dropShadow = Color(0xF0CB9A4D);
}