import 'dart:convert';
import 'package:flutter/services.dart';

class NavigationService {
  NavigationService();
  Future<List> getpath() async {
    final rawData = await rootBundle.loadString('assets/navigation.json');
    List data = jsonDecode(rawData);
    return data;
  }
}
