import 'package:flutter/material.dart';
import 'package:food_delivery_app/Signup/components/signup_screen_top_image.dart';
import 'package:food_delivery_app/Signup/components/social_sign_up.dart';
import 'package:food_delivery_app/Signup/signup_form.dart';
import 'package:food_delivery_app/components/background.dart';
import 'package:food_delivery_app/responsive.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(child: SingleChildScrollView(
      child: Responsive(mobile:MobileSignUpScreen(), desktop:
         Column(children: [
          SignUpScreenTopImage(),
          SizedBox(width: 450,
          child: SignupForm(),
          ),
           SocialSignUp(),
        ],
      ),),
    ),);
  }
}
class MobileSignUpScreen extends StatelessWidget {
  const MobileSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      SignUpScreenTopImage(),
        Row(children: [
          Spacer(),
          Expanded(
            flex: 8,
            child:
          SignupForm(),
          ),
        Spacer(),
        ],),
        SocialSignUp(),
    ],);
  }
}
