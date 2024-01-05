import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/login/components/login_form.dart';
import 'package:food_delivery_app/login/components/login_screen_top_image.dart';
import 'package:food_delivery_app/responsive.dart';

import '../components/background.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(child:SingleChildScrollView(
      child: Responsive(
        desktop: Column(children: [
          LoginScreenTopImage(),
          SizedBox(width: 450,child:
          LoginForm(),
          ),
        ],),
        mobile: MobileLoginScreen(),
      ),
    ),
    );
  }
}
class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginScreenTopImage(),
        SizedBox(width: 450,
        child: LoginForm(),
        ),
      ],
    );
  }
}
