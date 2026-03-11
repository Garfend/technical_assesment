import 'package:flutter/material.dart';
import 'package:technical_assesment/core/config/go_router_extensions.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';
import 'package:technical_assesment/core/local_data/mock_data.dart';
import 'package:technical_assesment/features/home/data/models/user_model.dart';
import 'package:technical_assesment/features/profile/data/models/loyalty_history_model.dart';
import 'package:technical_assesment/features/profile/ui/widgets/loyalty_history_card.dart';
import 'package:technical_assesment/features/profile/ui/widgets/profile_section.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/assets_paths.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel user = MockData.user;
    final List<LoyaltyHistoryModel> mockData = MockData.loyaltyHistory;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: const Text('Your Profile', style: AppTextStyles.sectionTitle),
        leading: Icon(Icons.arrow_back_ios_new).onTap(context.goToHome),
        actions: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetPaths.settingsIcon),
              ),
            ),
          ).paddingHorizontalSm(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileSection(user: user).paddingVerticalMd(),
            Text(
              'Venue Selection',
              style: AppTextStyles.sectionTitleProfile,
            ).paddingVerticalSm(),
            ListView.builder(
              itemBuilder: (context, index) {
                return LoyaltyHistoryCard(
                  loyaltyHistory: mockData[index],
                ).paddingVerticalXs();
              },
              itemCount: mockData.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ).paddingAllMd(),
      ),
    );
  }
}
