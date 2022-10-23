import 'package:flutter/material.dart';
import 'package:ui_yoga/colors_value.dart';
import 'package:ui_yoga/delayed_animation.dart';
import 'package:ui_yoga/rotation_animation_widget.dart';
import 'package:ui_yoga/social_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 30,
            ),
            child: Column(
              children: <Widget>[
                DelayedAnimation(
                  child: Container(
                    height: 170,
                    child: Image.asset("assets/images/yoga_slogan.jpg"),
                  ),
                  delay: 1500,
                ),
                DelayedAnimation(
                  child: Container(
                    height: 400,
                    child: Image.asset("assets/images/yoga_img.png"),
                  ),
                  delay: 2500,
                ),
                DelayedAnimation(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: const Text(
                      'get fitter, stronger, anf embrasse a helthier lifestyle',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  delay: 3500,
                ),
                DelayedAnimation(
                  delay: 4500,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('GET STARTED!'),
                      style: ElevatedButton.styleFrom(
                        primary: d_orange,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(13),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SocialPage(),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
