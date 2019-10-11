import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Save {
  static const String app_name = 'taqs';
  static const String app_version = 'version 1.0.0';
  static const int app_v_code = 1;

  static SharedPreferences prefs;
  static const String cityName = "casablanca";
}
