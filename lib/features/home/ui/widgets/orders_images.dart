import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technical_assesment/features/home/ui/widgets/total_orders_images.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../core/config/double_extensions.dart';
import '../../../../core/config/widget_extensions.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_spacing.dart';

class OrdersImages extends StatelessWidget {
  final List<String> venueImages;
  final bool hasMore;

  const OrdersImages({
    super.key,
    required this.venueImages,
    required this.hasMore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...venueImages.asMap().entries.map(
          (entry) => TotalOrdersImages(
            orderImageUrl: entry.value,
            size: 35,
          ).paddingHorizontalXxs(),
        ),

        if (hasMore) AppSpacing.xxs.width,
        Container(
          width: 35,
          height: 35,
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
}
