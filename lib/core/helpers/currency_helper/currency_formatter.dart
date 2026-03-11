import 'currency_model.dart';

class CurrencyFormatter {
  static String format(double amount, CurrencyModel currency) {
    final value = amount.toStringAsFixed(currency.decimalPlaces);
    return '$value ${currency.symbol}';
  }
}