import 'package:flutter/material.dart';
import 'package:technical_assesment/app/theme/app_colors.dart';
import 'package:technical_assesment/app/theme/app_text_styles.dart';
import 'package:technical_assesment/core/business_logic/loyalty_calculator.dart';
import 'package:technical_assesment/core/config/double_extensions.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';
import 'package:technical_assesment/core/constants/app_spacing.dart';
import 'package:technical_assesment/core/constants/assets_paths.dart';
import 'package:technical_assesment/features/home/ui/widgets/loyalty_progress_widget.dart';
import 'package:technical_assesment/features/home/ui/widgets/total_orders_images.dart';
import 'package:technical_assesment/features/profile/data/models/loyalty_history_model.dart';

class LoyaltyPointsCard extends StatelessWidget {
  final List<LoyaltyHistoryModel> loyaltyHistory;
  final VoidCallback onPressed;

  const LoyaltyPointsCard({
    super.key,
    required this.loyaltyHistory,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final totalCredits = LoyaltyCalculator.calculateTotalCredits(
      loyaltyHistory,
    );
    final progressValue = LoyaltyCalculator.calculateProgress(totalCredits);
    final totalOrders = LoyaltyCalculator.getTotalOrders(loyaltyHistory);
    final formattedCredits = LoyaltyCalculator.formatLoyaltyPoints(
      totalCredits,
    );
    final venueImages = LoyaltyCalculator.getVenueImages(loyaltyHistory);
    final hasMore = LoyaltyCalculator.hasMoreOrders(loyaltyHistory, 3);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(AppRadius.card),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('AlterNow', style: AppTextStyles.cardAlter),
                  Text('Loyalty Points', style: AppTextStyles.cardTitle),
                ],
              ).paddingHorizontalSm().paddingVerticalXs(),
              Image.asset(
                AssetPaths.userIcon,
                width: 35,
                height: 35,
                color: AppColors.white,
                fit: BoxFit.contain,
              ).paddingHorizontalSm(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedCredits,
                style: AppTextStyles.goldGradiantNumber,
              ).paddingHorizontalSm(),
              LoyaltyProgressWidget(
                progress: progressValue,
              ).paddingHorizontalXxs(),
            ],
          ),

          Row(
            children: [
              Text('Total orders: ', style: AppTextStyles.cardLabel),
              Text('$totalOrders', style: AppTextStyles.cardLabelGold),
            ],
          ).paddingHorizontalSm(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildOrdersImages(venueImages, hasMore),
              _buildContinueButton(onPressed),
            ],
          ).paddingHorizontalSm(),
        ],
      ).paddingAllXs(),
    ).paddingAllSm();
  }
}

Widget _buildContinueButton(VoidCallback onPressed) {
  return ElevatedButton(
    clipBehavior: Clip.antiAlias,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.circular),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('More details', style: AppTextStyles.button),
        AppSpacing.xxs.width,
        Icon(Icons.arrow_forward),
      ],
    ),
  );
}

Widget _buildOrdersImages(List<String> venueImages, bool hasMore) {
  return Row(
    children: [
      ...venueImages.asMap().entries.map(
        (entry) => TotalOrdersImages(
          orderImageUrl: entry.value,
          size: 45,
        ).paddingHorizontalXxs(),
      ),

      if (hasMore) AppSpacing.xxs.width,
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.card),
          color: AppColors.white.withAlpha(20),
          border: Border.all(color: AppColors.white.withAlpha(50), width: 1),
        ),
        child: Icon(Icons.add, color: AppColors.white, size: 20),
      ),
    ],
  );
}
