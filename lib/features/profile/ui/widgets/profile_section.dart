import 'package:flutter/material.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';

import '../../../../app/theme/app_text_styles.dart';
import '../../../home/data/models/user_model.dart';

class ProfileSection extends StatelessWidget {
  final UserModel user;

  const ProfileSection({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(user.avatarUrl ?? ''),
          backgroundColor: Colors.grey.shade800,
        ).paddingHorizontalSm(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name ?? 'Guest', style: AppTextStyles.userName),
              Text(user.phone ?? '', style: AppTextStyles.phoneNumber),
            ],
          ),
        ),
        Text('Edit', style: AppTextStyles.editButton),
      ],
    );
  }
}
