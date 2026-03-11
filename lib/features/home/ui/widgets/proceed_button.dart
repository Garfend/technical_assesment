import 'package:flutter/material.dart';
import 'package:technical_assesment/core/constants/app_radius.dart';

import '../../../../app/theme/app_colors.dart';

class ProceedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ProceedButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.circular),
        border: Border.all(
          color: AppColors.white.withAlpha(40),
        )
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.arrow_forward_ios),
        color: AppColors.gold,
      ),
    );
  }
}
