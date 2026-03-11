import 'package:flutter/material.dart';

import '../../core/config/responsive_adapter.dart';
import 'app_colors.dart';

class AppTextStyles {

  static AppTextStyles of(BuildContext context) => AppTextStyles._internal(context);

  final BuildContext context;
  AppTextStyles._internal(this.context);

  // Home - Greeting
  static const TextStyle welcomeLabel = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle userName = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle phoneNumber = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.gold,
  );

  // Loyalty Card
  static const TextStyle cardLabel = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle cardAlter = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle cardTitle = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle cardLabelGold = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.badgeGold,
  );

  static const TextStyle loyaltyPoints = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.goldLight,
  );

  static const TextStyle totalOrdersLabel = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle totalOrdersCount = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle moreDetails = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // Section Headers
  static const TextStyle sectionTitle = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Venue Card
  TextStyle get venueCategory => TextStyle(
    fontFamily: 'Satoshi',
    fontSize: context.responsiveFont(
      12,
      smallMobile: 10,
      tablet: 20,
      largerTables: 28,
    ),
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  TextStyle get venueNames => TextStyle(
    fontFamily: 'Satoshi',
    fontSize: context.responsiveFont(
      22,
      smallMobile: 14,
      tablet: 32,
      largerTables: 40,
    ),
    fontWeight: FontWeight.w700,
    color: AppColors.gold,
  );

  static const TextStyle loyaltyName = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.gold,
  );

  // Profile
  static const TextStyle profileTitle = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle profileName = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle profilePhone = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.gold,
  );

  static const TextStyle editButton = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // Loyalty History
  static const TextStyle historyVenueName = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle historyDate = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle historyAmount = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.gold,
  );

  static const TextStyle creditsBadge = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  // Buttons
  static const TextStyle button = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // gradiant texts
  static final TextStyle goldGradiant = TextStyle(
    fontFamily: 'Satoshi',
    foreground: Paint()
      ..shader = AppColors.goldGradient.createShader(
        const Rect.fromLTWH(0, 0, 200, 20),
      ),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle goldGradiantNumber = TextStyle(
    fontFamily: 'Satoshi',
    foreground: Paint()
      ..shader = AppColors.goldGradient.createShader(
        const Rect.fromLTWH(0, 0, 200, 20),
      ),
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
}
