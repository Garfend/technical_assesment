import '../../features/profile/data/models/loyalty_history_model.dart';

class LoyaltyCalculator {
  static const int maxLoyaltyPoints = 25000;

  static int calculateTotalCredits(List<LoyaltyHistoryModel> history) {
    if (history.isEmpty) return 0;
    return history.fold(0, (sum, item) => sum + item.creditsEarned);
  }

  static double calculateProgress(int currentPoints) {
    if (currentPoints >= maxLoyaltyPoints) return 1.0;
    return currentPoints / maxLoyaltyPoints;
  }

  static int getTotalOrders(List<LoyaltyHistoryModel> history) {
    return history.length;
  }

  static List<String> getVenueImages(
    List<LoyaltyHistoryModel> history, {
    int limit = 3,
  }) {
    return history
        .take(limit)
        .map((item) => item.venueImageUrl)
        .toList();
  }

  static bool hasMoreOrders(List<LoyaltyHistoryModel> history, int displayLimit) {
    return history.length > displayLimit;
  }

  static String formatLoyaltyPoints(int points) {
    return points.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }
}
