import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:technical_assesment/app/theme/app_colors.dart';
import 'package:technical_assesment/core/config/double_extensions.dart';
import 'package:technical_assesment/core/config/go_router_extensions.dart';
import 'package:technical_assesment/core/config/widget_extensions.dart';
import 'package:technical_assesment/core/constants/app_spacing.dart';
import 'package:technical_assesment/core/local_data/mock_data.dart';
import 'package:technical_assesment/features/home/data/models/user_model.dart';
import 'package:technical_assesment/features/home/data/models/venue_model.dart';
import 'package:technical_assesment/features/home/ui/widgets/loyalty_points_card.dart';
import 'package:technical_assesment/features/home/ui/widgets/venue_card.dart';

import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/constants/assets_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<VenueModel> mockData = MockData.venues;
    final UserModel user = MockData.user;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Back,',
                        style: AppTextStyles.welcomeLabel,
                      ),
                      AppSpacing.xxs.height,
                      Text(user.name!, style: AppTextStyles.goldGradiantNumber,),
                    ],
                  ),
                  _buildProfileIcon(context),
                ],
              ).paddingSymmetric(AppSpacing.xl, AppSpacing.xl),
            ),

            SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                  height: 290,
                  child: LoyaltyPointsCard(
                    onPressed: context.goTopProfile,
                    loyaltyHistory: MockData.loyaltyHistory,
                  ),
                ),
              )
            ),

            SliverPadding(
              padding: const EdgeInsets.only(
                left: AppSpacing.xl,
                right: AppSpacing.xl,
                bottom: AppSpacing.md,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Venue Selection',
                  style: AppTextStyles.sectionTitle,
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              sliver: SliverMasonryGrid(
                mainAxisSpacing: AppSpacing.sm,
                crossAxisSpacing: AppSpacing.sm,
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        // this is not even the left side is a bit shorter than right side
                        // to even them out remove the "!" from "!index.isEven"
                        // it is like that to match figma design
                    final double currentAspectRatio = !index.isEven ? 0.90 : 1.0;
                    return AspectRatio(
                      aspectRatio: currentAspectRatio,
                      child: VenueCard(
                        venue: mockData[index],
                        onPressed: () {
                          // Your action
                        },
                      ),
                    );
                  },
                  childCount: mockData.length,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),
          ],
        ),
      ),
    );
  }
}

Widget _buildProfileIcon(BuildContext context) {
  return Container(
    height: 56,
    width: 56,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.cardDark,
      border: Border.all(
        color: AppColors.cardLightDark,
        width: AppSpacing.xxs / 2,
      ),
    ),
    child: Image.asset(
      AssetPaths.userIcon,
      width: 40,
      height: 40,
      color: AppColors.white,
      fit: BoxFit.contain,
    ).paddingHorizontalSm(),
  ).onTap(context.goTopProfile);
}
