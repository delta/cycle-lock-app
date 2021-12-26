import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 40, 40, 40),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 125,
                    width: 200,
                  ),
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('images/deltaLogoGreen.png'),
                    backgroundColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 15,
                    width: 200,
                  ),
                  const Text(
                    'Student Name',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 25,
                      color: Colors.white,
                      shadows: <Shadow>[ Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    color: Colors.white
                  )
                ]
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 200,
                  ),
                  const Text(
                    '106120011@nitt.edu',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'SourceSansPro',
                      color: Color.fromARGB(255, 2, 200, 20)
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 200,
                    child: Divider(
                      color: Colors.teal[100],
                    ),
                  ),
                  const SizedBox(
                      width: 300,
                      child: Card(
                          color: Color(0xff242B2E),
                          elevation: 10,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.account_box_rounded,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro', fontSize: 14.0, color: Colors.white),
                            ),
                          ))),
                  const SizedBox(
                      width: 300,
                      child: Card(
                          color: Color(0xff242B2E),
                          elevation: 10,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.settings_applications_rounded,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Settings',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro', fontSize: 14.0, color: Colors.white),
                            ),
                          ))),
                  const SizedBox(
                      width: 300,
                      child: Card(
                          color: Color(0xff242B2E),
                          elevation: 10,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.subject_rounded,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Feedback',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro', fontSize: 14.0, color: Colors.white),
                            ),
                          ))),
                  const SizedBox(
                      width: 300,
                      child: Card(
                          color: Color(0xff242B2E),
                          elevation: 10,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.logout_rounded,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Logout',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro', fontSize: 14.0, color: Colors.white),
                            ),
                          )))
                ],
              ),
            ),
          ),
  );
}
