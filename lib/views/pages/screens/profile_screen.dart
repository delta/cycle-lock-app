import 'package:cycle_lock/views/pages/screens/profile_page.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color.fromARGB(255, 243, 243, 243),
        child: Center(child: profilePage()),
      );
}
