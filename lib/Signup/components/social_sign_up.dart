import 'package:flutter/material.dart';
import 'package:food_delivery_app/Signup/components/or_divider.dart';
import 'package:food_delivery_app/Signup/components/social_icon.dart';
class SocialSignUp extends StatelessWidget {
  const SocialSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
OrDivider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SocialIcon(
          iconSrc: 'assets/icons/facebook.svg',
        ),
        SocialIcon(
          iconSrc: 'assets/icons/twitter.svg',
        ),
        SocialIcon(
          iconSrc: 'assets/icons/google-plus.svg',
        ),
      ],),
    ],);
  }
}
