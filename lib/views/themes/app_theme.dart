import 'package:flutter/material.dart';
import 'package:cycle_lock/widgets/colors.dart';

@immutable
class AppTheme {
  static const colours = AppColours();

  const AppTheme._();

  static ThemeData define() => ThemeData();
}
