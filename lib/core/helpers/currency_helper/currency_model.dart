
class CurrencyModel {
  final String code;
  final String symbol;
  final int decimalPlaces;

  const CurrencyModel({
    required this.code,
    required this.symbol,
    this.decimalPlaces = 2,
  });
}