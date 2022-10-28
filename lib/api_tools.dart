import 'dart:convert';

class ApiTools{
  static String utf8toUtf16(String s) {
    var utf8runes = s.runes.toList();
    String result = utf8.decode(utf8runes);
    return result;
  }
}