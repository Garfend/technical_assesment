import 'package:technical_assesment/features/home/data/models/user_model.dart';

import '../../features/home/data/models/venue_model.dart';
import '../../features/profile/data/models/loyalty_history_model.dart';
import '../business_logic/loyalty_calculator.dart';
import '../constants/assets_paths.dart';

class MockData {
  static var totalPoints = LoyaltyCalculator.calculateTotalCredits(loyaltyHistory);
  static var totalOrders = LoyaltyCalculator.getTotalOrders(loyaltyHistory);

  static final user =
  UserModel(
    name: 'Asmar Ajlouni',
    phone: "+962 234 567 2349",
    avatarUrl: AssetPaths.userAvatar,
    loyaltyPoints: totalPoints,
    loyaltyProgress: LoyaltyCalculator.calculateProgress(totalPoints),
    totalOrders: totalOrders,
  );

  static const venues = [
    VenueModel(
      id: '1',
      name: 'Ceano',
      category: 'Nikkei',
      venueImage: AssetPaths.ceano,
    ),
    VenueModel(
      id: '2',
      name: 'Nobiko',
      category: 'Restaurant',
      venueImage: AssetPaths.nobiko,
    ),
    VenueModel(
      id: '3',
      name: 'Dovely',
      category: 'Casual',
      venueImage: AssetPaths.dovely,
    ),
    VenueModel(
      id: '4',
      name: 'Olive Tree',
      category: 'Bakery',
      venueImage: AssetPaths.olivestree,
    ),

  ];

  static const String currencyCode = 'JOD';
  static final loyaltyHistory = [
    LoyaltyHistoryModel(
      id: '1',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2025, 1, 6),
      creditsBadge: 325,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 230,
    ),
    LoyaltyHistoryModel(
      id: '2',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2025, 1, 6),
      creditsBadge: 325,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 230,
    ),
    LoyaltyHistoryModel(
      id: '3',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2025, 1, 6),
      creditsBadge: 325,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 230,
    ),
    LoyaltyHistoryModel(
      id: '4',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2025, 1, 6),
      creditsBadge: 10000,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 10000,
    ),
    LoyaltyHistoryModel(
      id: '5',
      venueName: 'Ceano Restaurant',
      venueImageUrl: AssetPaths.image2,
      date: DateTime(2025, 1, 5),
      creditsBadge: 280,
      amountValue: 98.50,
      currencyCode: currencyCode,
      creditsEarned: 180,
    ),
    LoyaltyHistoryModel(
      id: '6',
      venueName: 'Dovely Cafe',
      venueImageUrl: AssetPaths.image3,
      date: DateTime(2025, 1, 4),
      creditsBadge: 150,
      amountValue: 45.75,
      currencyCode: currencyCode,
      creditsEarned: 95,
    ),
    LoyaltyHistoryModel(
      id: '7',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2025, 1, 3),
      creditsBadge: 325,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 230,
    ),
    LoyaltyHistoryModel(
      id: '8',
      venueName: 'Ceano Restaurant',
      venueImageUrl: AssetPaths.image2,
      date: DateTime(2025, 1, 2),
      creditsBadge: 280,
      amountValue: 112.40,
      currencyCode: currencyCode,
      creditsEarned: 200,
    ),
    LoyaltyHistoryModel(
      id: '9',
      venueName: 'Dovely Cafe',
      venueImageUrl: AssetPaths.image3,
      date: DateTime(2024, 12, 30),
      creditsBadge: 150,
      amountValue: 56.80,
      currencyCode: currencyCode,
      creditsEarned: 110,
    ),
    LoyaltyHistoryModel(
      id: '10',
      venueName: 'Nobiko Bistro',
      venueImageUrl: AssetPaths.image1,
      date: DateTime(2024, 12, 28),
      creditsBadge: 325,
      amountValue: 125.32,
      currencyCode: currencyCode,
      creditsEarned: 230,
    ),
  ];
}