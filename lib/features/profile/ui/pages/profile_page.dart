import 'package:flutter/material.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';
import 'package:technical_assesment/core/local_data/mock_data.dart';
import 'package:technical_assesment/features/home/data/models/user_model.dart';
import 'package:technical_assesment/features/profile/data/models/loyalty_history_model.dart';
import 'package:technical_assesment/features/profile/ui/widgets/loyalty_history_card.dart';
import 'package:technical_assesment/features/profile/ui/widgets/profile_section.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_text_styles.dart';

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
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Settings clicked')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileSection(user: user).paddingVerticalMd(),
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
