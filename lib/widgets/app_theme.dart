import 'package:flutter/material.dart';
import 'package:cycle_lock/widgets/colours.dart';

@immutable
class AppTheme {
  static const colours = AppColours();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(fontFamily: 'newsreader.ttf');
  }
}
