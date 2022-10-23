import 'package:flutter/material.dart';
import 'package:ui_yoga/colors_value.dart';
import 'package:ui_yoga/delayed_animation.dart';
import 'package:ui_yoga/login_form.dart';
import 'package:ui_yoga/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                children: const <Widget>[
                  DelayedAnimation(
                    delay: 1500,
                    child: Text(
                      'Connect email address',
                      style: TextStyle(
                        color: d_orange,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                    delay: 2500,
                    child: Text(
                      "It's recommended to connect your email address for us to better protect your information.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const LoginForm(),
            const SizedBox(
              height: 125,
            ),
            DelayedAnimation(
              delay: 5500,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: d_orange,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(13),
                  ),
                  child: const Text(
                    'CONFIRM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
