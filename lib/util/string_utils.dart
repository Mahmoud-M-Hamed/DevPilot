

import 'package:flutter/foundation.dart';

class StringUtils {
  static String capitalize(String input) {
    if (input.isEmpty) return input;
    final String result = input[0].toUpperCase() + input.substring(1);
    return result;
  }

  static String toTitleCase(String input) {
    //String sentence = "Hello World from Dart";
    List<String> words = input.split(' ');
    debugPrint(words as String?);
    debugPrint(words.join());

    List<String> initials = words.map((word) => word[0].toUpperCase() + word.substring(1)).toList();

    print(initials); // Output: [H, W, f, D]
    return initials.first;
  }

  static String reverse(String input) {
    return input.split('').reversed.join();
  }

  static bool isPalindrome(String input) {
    final normalized = input.replaceAll(' ', '').toLowerCase();
    return normalized == normalized.split('').reversed.join();
  }
}