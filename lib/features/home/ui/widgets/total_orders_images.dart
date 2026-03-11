import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technical_assesment/app/theme/app_colors.dart';

import '../../../../core/constants/app_radius.dart';

class TotalOrdersImages extends StatelessWidget {
  final String orderImageUrl;
  final double size;

  const TotalOrdersImages({
    super.key,
    required this.orderImageUrl,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.button),
        border: Border.all(color: AppColors.black, width: AppRadius.card / 6),
        image: DecorationImage(
          image: AssetImage(orderImageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
