import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/views/pages/screens/carousel_screen.dart';
import 'package:cycle_lock/views/widgets/dauth_button.dart' as summa;
import 'package:cycle_lock/views/widgets/carousel_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dauth/flutter_dauth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_dauth/flutter_dauth.dart' as dauth;

// ignore: must_be_immutable
class AuthPage extends GetView<AuthController> {
  AuthPage({Key? key}) : super(key: key);

  final String _exampleText = '';

  final dauth.TokenRequest _request = TokenRequest(
      //Your Client-Id provided by Dauth Server at the time of registration.
      clientId: '4W9RtBUEp3_9sF80',
      //redirectUri provided by You to Dauth Server at the time of registration.
      redirectUri: 'https://delta.nitt.edu/',
      //A String which will retured with access_token for token verification in client side.
      state: 'STATE',
      //setting isUser to true to retrive UserDetails in ResourceResponse from Dauth server.
      scope: const dauth.Scope(isUser: true),
      //codeChallengeMethod Should be specified as `plain` or `S256` based on thier requirement.
      codeChallengeMethod: 'S256');

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              children: <Widget>[
                Center(
                    child: Text(
                  _exampleText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
                Positioned(
                    left: 50,
                    right: 50,
                    bottom: 10,
                    //DAuth button returns TokenResponse and ResponseMessage when pressed.
                    child: summa.DauthButton(
                        request: _request,
                        onPressed: (dauth.TokenResponse res) {
                          //changes the exampleText as Token_TYPE: <YOUR_TOKEN> from the previous string if the response is success'
                          /*StreamController(() {
                            _exampleText = 'Token: ' + res.tokenType.toString();
                          });
                          */
                        })),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: const <Widget>[CarouselScreen(), CarouselDots()],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      );
}
