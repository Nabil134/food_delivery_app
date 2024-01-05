
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Signup/signup_screen.dart';

import '../../constants.dart';
import '../../login/login_screen.dart';

class LoginSignUpBtn extends StatelessWidget {
  const LoginSignUpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Hero(tag: 'login_btn', child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
          child: Text("Login".toUpperCase()),
        ),
        ),
        const SizedBox(height: kDefaultPadding,),
        Hero(tag: 'signup_btn', child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            elevation: 0,
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
          child: Text("Sign Up".toUpperCase(),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        ),
      ],
    );
  }
}
