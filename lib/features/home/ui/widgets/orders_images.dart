import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technical_assesment/features/home/ui/widgets/total_orders_images.dart';

import '../../../../core/config/widget_extensions.dart';

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
            size: 40,
          ).paddingHorizontalXxs(),
        ),
      ],
    );
  }
}
