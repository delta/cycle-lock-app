import 'package:cycle_lock/models/menu_item.dart';
import 'package:cycle_lock/views/pages/screens/map_screen.dart';
import 'package:cycle_lock/views/pages/screens/profile_screen.dart';
import 'package:cycle_lock/views/pages/screens/scan_screen.dart';
import 'package:flutter/material.dart';

final homePages = [
  MenuItem('Map', Icons.map, const MapScreen()),
  MenuItem('Scan', Icons.qr_code, const ScanScreen()),
  MenuItem('Profile', Icons.person, const ProfileScreen()),
];
