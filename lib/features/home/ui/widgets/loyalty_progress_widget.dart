import 'package:flutter/cupertino.dart';
import 'package:technical_assesment/app/theme/app_colors.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';

class LoyaltyProgressWidget extends StatelessWidget {
  final double progress;

  const LoyaltyProgressWidget({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.circular),
        ),
        clipBehavior: Clip.antiAlias,
        height: 20,
        child: Stack(
          children: [
            // Background
            Container(
              color: AppColors.black,
            ),
            FractionallySizedBox(
              widthFactor: progress,
              child: Container(
                decoration: BoxDecoration(
                  gradient: AppColors.goldGradient,
                ),
              ),
            ),
          ],
        ),
      );
  }
}
