import 'package:intl/intl.dart';

import '../../../../core/constants/supported_currencies.dart';
import '../../../../core/helpers/currency_helper/currency_formatter.dart';

class LoyaltyHistoryModel {
  final String id;
  final String venueName;
  final String venueImageUrl;
  final DateTime date;
  final int creditsBadge;
  final double amountValue;
  final String currencyCode;
  final int creditsEarned;

  const LoyaltyHistoryModel({
    required this.id,
    required this.venueName,
    required this.venueImageUrl,
    required this.date,
    required this.creditsBadge,
    required this.amountValue,
    required this.currencyCode,
    required this.creditsEarned,
  });

  String get formattedAmount => CurrencyFormatter.format(
    amountValue,
    SupportedCurrencies.get(currencyCode),
  );
  String get formattedDate => DateFormat('dd MMM, yyyy').format(date);

  Map<String, dynamic> toDatabase() {
    return {
      'id': id,
      'venueName': venueName,
      'venueImageUrl': venueImageUrl,
      'date': date.toIso8601String(),
      'creditsBadge': creditsBadge,
      'amountValue': amountValue,
      'currencyCode': currencyCode,
      'creditsEarned': creditsEarned,
    };
  }

  factory LoyaltyHistoryModel.fromDatabase(Map<String, dynamic> map) {
    return LoyaltyHistoryModel(
      id: map['id'] as String,
      venueName: map['venueName'] as String,
      venueImageUrl: map['venueImageUrl'] as String,
      date: DateTime.parse(map['date'] as String),
      creditsBadge: map['creditsBadge'] as int,
      amountValue: map['amountValue'] as double,
      currencyCode: map['currencyCode'] as String,
      creditsEarned: map['creditsEarned'] as int,
    );
  }

  LoyaltyHistoryModel copyWith({
    String? id,
    String? venueName,
    String? venueImageUrl,
    DateTime? date,
    int? creditsBadge,
    double? amountValue,
    String? currencyCode,
    int? creditsEarned,
  }) {
    return LoyaltyHistoryModel(
      id: id ?? this.id,
      venueName: venueName ?? this.venueName,
      venueImageUrl: venueImageUrl ?? this.venueImageUrl,
      date: date ?? this.date,
      creditsBadge: creditsBadge ?? this.creditsBadge,
      amountValue: amountValue ?? this.amountValue,
      currencyCode: currencyCode ?? this.currencyCode,
      creditsEarned: creditsEarned ?? this.creditsEarned,
    );
  }

  List<Object?> get props => [
    id,
    venueName,
    venueImageUrl,
    date,
    creditsBadge,
    amountValue,
    currencyCode,
    creditsEarned,
  ];
}
