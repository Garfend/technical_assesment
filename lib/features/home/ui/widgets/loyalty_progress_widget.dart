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
      height: 26,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(AppRadius.circular),
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: progress.clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: AppColors.goldGradient,
                borderRadius: BorderRadius.circular(AppRadius.circular),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.dropShadow.withOpacity(0.4),
                    blurRadius: AppRadius.button,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}