
import '../helpers/currency_helper/currency_model.dart';

class SupportedCurrencies {
  static const Map<String, CurrencyModel> all = {
    'JOD': CurrencyModel(
      code: 'JOD',
      symbol: 'JD',
      decimalPlaces: 2,
    ),
    'USD': CurrencyModel(
      code: 'USD',
      symbol: 'USD',
      decimalPlaces: 2,
    ),
  };

  static CurrencyModel get(String code) =>
      all[code] ?? all['JOD']!;
}