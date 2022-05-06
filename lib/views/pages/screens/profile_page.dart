import 'package:flutter/material.dart';

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
        profileItem(
            'Edit Profile', Icons.person, const Color.fromARGB(255, 1, 47, 85)),
        profileItem(
            'Settings', Icons.settings, const Color.fromARGB(255, 1, 47, 85)),
        profileItem(
            'Feedback', Icons.feedback, const Color.fromARGB(255, 1, 47, 85)),
        profileItem('Logout', Icons.logout, Colors.red),
      ],
    );

Widget profileItem(String itemName, IconData itemIcon, Color itemColor) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: ElevatedButton(
          onPressed: () => {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ))),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  itemIcon,
                  color: itemColor,
                  size: 24.0,
                ),
                const SizedBox(width: 15),
                Text(
                  itemName,
                  style: TextStyle(
                      fontSize: 15,
                      color: itemColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )),
    );
