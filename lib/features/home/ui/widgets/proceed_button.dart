import 'package:flutter/material.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';

import '../../../../app/theme/app_colors.dart';

class ProceedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ProceedButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: BoxConstraints.tight(const Size(35, 35)),
      padding: EdgeInsets.zero,
      iconSize: 18,
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_forward_ios),
      color: AppColors.gold,
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.circular),
          side: BorderSide(color: AppColors.white.withAlpha(40)),
        ),
      ),
    );
  }
}
