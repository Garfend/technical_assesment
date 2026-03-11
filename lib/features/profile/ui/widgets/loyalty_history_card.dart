import 'package:flutter/material.dart';
import 'package:technical_assesment/app/theme/app_colors.dart';
import 'package:technical_assesment/app/theme/app_text_styles.dart';
import 'package:technical_assesment/core/config/double_extensions.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';
import 'package:technical_assesment/features/profile/data/models/loyalty_history_model.dart';

import '../../../../core/constants/app_spacing.dart';

class LoyaltyHistoryCard extends StatelessWidget {
  final LoyaltyHistoryModel loyaltyHistory;

  const LoyaltyHistoryCard({super.key, required this.loyaltyHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(AppRadius.cardLarge),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(AppRadius.card),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.circular),
              child: Image.asset(
                loyaltyHistory.venueImageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Container(color: AppColors.cardDark),
              ),
            ),
          ).paddingAllXxs(),
          AppSpacing.md.width,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.xxxs.height,
                Text(loyaltyHistory.venueName, style: AppTextStyles.loyaltyName),
                AppSpacing.xxxs.height,
                Text(
                  loyaltyHistory.formattedDate.toString(),
                  style: AppTextStyles.totalOrdersLabel,
                ),
                AppSpacing.md.height,
                Text(
                  '${loyaltyHistory.formattedAmount} • ${loyaltyHistory.creditsBadge} Credits',
                  style: AppTextStyles.goldGradiant,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                    gradient: AppColors.goldGradient,
                  ),
                  child: Text(
                    '${loyaltyHistory.creditsBadge.toString()} Credits',
                    style: AppTextStyles.creditsBadge,
                  ).paddingSymmetric(AppSpacing.xsm, AppSpacing.xs),
                ),

                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.cardLightDark,
                  size: 20,
                ).paddingOnly(bottom: AppSpacing.xxxs, right: AppSpacing.xxs),
              ],
            ),
          ),
        ],
      ).paddingAllSm(),
    );
  }
}
