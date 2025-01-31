import 'package:flutter/material.dart';

class NHelperFunctions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return const Color(0xFF4CAF50);
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Grey') {
      return Colors.grey;
    }
    return null;
  }

  // Show a Snackbar with custom message and color
  static void showSnackbar(BuildContext context, String message,
      {Color? color}) {
    final snackBar = SnackBar(
      content: Text(message, style: const TextStyle(color: Colors.white)),
      backgroundColor: color ?? Colors.black87,
      duration: const Duration(seconds: 3),
    );
//usage:NHelperFunctions.showSnackbar(context, "Product added to cart!");

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Show a success message
  static void showSuccessSnackbar(BuildContext context, String message) {
    showSnackbar(context, message, color: Colors.green);
  }

  // Show an error message
  static void showErrorSnackbar(BuildContext context, String message) {
    showSnackbar(context, message, color: Colors.red);
  }

  // Check if a string contains a search query (case insensitive)
  static bool containsQuery(String text, String query) {
    return text.toLowerCase().contains(query.toLowerCase());
  }

  // Shorten text with ellipsis (e.g., "This is a long title..." if longer than 20 chars)
  static String truncateText(String text, int length) {
    return (text.length > length) ? "${text.substring(0, length)}..." : text;
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }
}
