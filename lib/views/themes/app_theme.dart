import 'package:flutter/material.dart';
import 'package:cycle_lock/views/themes/colors.dart';

@immutable
class AppTheme {
  static const colours = AppColours();

  const AppTheme._();

  static ThemeData define() => ThemeData();
}
