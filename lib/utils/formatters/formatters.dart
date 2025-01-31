import 'package:intl/intl.dart';

class NFormatters {
  // Format currency (e.g., $1,299.99)
  static String formatCurrency(double amount,
      {String locale = 'en_US', String symbol = '\$'}) {
    final format = NumberFormat.currency(locale: locale, symbol: symbol);
    return format.format(amount);
  }

  // Format date (e.g., Jan 30, 2025)
  static String formatDate(DateTime date, {String format = 'MMM d, y'}) {
    return DateFormat(format).format(date);
  }

  // Format phone number (e.g., +1 (123) 456-7890)
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return "+1 (${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}";
    }
    return phoneNumber;
  }

  // Format price with two decimal places (e.g., 1299.99)
  static String formatPrice(double price) {
    return price.toStringAsFixed(2);
  }

  // Capitalize first letter of a string
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
