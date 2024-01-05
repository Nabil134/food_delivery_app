import 'package:flutter/material.dart';
import 'package:food_delivery_app/Welcome/components/login_signup_btn.dart';
import 'package:food_delivery_app/Welcome/components/welcome_image.dart';
import 'package:food_delivery_app/components/background.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/responsive.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop:Column(
             mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 WelcomeImage(),

                Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: LoginSignUpBtn(),),
                  ],
                ),

              ],
            ),

mobile: MobileWelcomeScreen(),

          ),
        ),
      ),
    );
  }
}
class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      WelcomeImage(),
        Row(children: [
          Expanded(
            flex: 8,
            child:
          LoginSignUpBtn(),
          ),
        ],),

    ],);
  }
}
