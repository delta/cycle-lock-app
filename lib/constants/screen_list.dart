import 'package:cycle_lock/views/pages/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:cycle_lock/views/pages/screens/map_screen.dart';
import 'package:cycle_lock/views/pages/screens/scan_screen.dart';

class ScreenList {
  static const screenList = [
    {'name': 'Map', 'view': MapScreen(), 'icon': Icons.map},
    {'name': 'Scan', 'view': ScanScreen(), 'icon': Icons.qr_code},
    {'name': 'Profile', 'view': ProfileScreen(), 'icon': Icons.person}
  ];
}
