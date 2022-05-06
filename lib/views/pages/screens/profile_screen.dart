import 'package:cycle_lock/views/pages/screens/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color.fromARGB(255, 243, 243, 243),
        child: Center(child: profilePage()),
      );
}

Column profilePage() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 1, 47, 85), width: 3),
                  ),
                  child: const Center(
                      child: Text(
                    'JD',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 47, 85),
                        fontWeight: FontWeight.bold),
                  ))),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 1, 47, 85),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('106120119@nitt.edu',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                      ))
                ],
              )
            ],
          ),
        ),
        ProfileItem(
            itemName: 'Edit Profile',
            itemIcon: Icons.person,
            itemColor: const Color.fromARGB(255, 1, 47, 85),
            onClickAction: () => {}),
        ProfileItem(
            itemName: 'Settings',
            itemIcon: Icons.settings,
            itemColor: const Color.fromARGB(255, 1, 47, 85),
            onClickAction: () => {}),
        ProfileItem(
            itemName: 'Feedback',
            itemIcon: Icons.feedback,
            itemColor: const Color.fromARGB(255, 1, 47, 85),
            onClickAction: () => {}),
        ProfileItem(
            itemName: 'Logout',
            itemIcon: Icons.logout,
            itemColor: Colors.red,
            onClickAction: () => {}),
      ],
    );
