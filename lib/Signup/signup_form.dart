import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/already_have_account.dart';

import '../constants.dart';
import '../login/login_screen.dart';
class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Form(child: Column(children: [
      TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        cursorColor: kPrimaryColor,
        onSaved: (email) {},
        decoration: const InputDecoration(
          hintText: "Your email",
          prefixIcon: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Icon(Icons.person),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: TextFormField(
          controller: _passwordController,
          textInputAction: TextInputAction.done,
          obscureText: true,
          cursorColor: kPrimaryColor,
          decoration: const InputDecoration(
            hintText: "Your password",
            prefixIcon: Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Icon(Icons.lock),
            ),
          ),
        ),
      ),
      const SizedBox(height: kDefaultPadding,),
      Hero(tag: 'signup_btn', child: ElevatedButton(
        onPressed: (){
        },
        child: Text("Sign Up".toUpperCase()),
      ),
      ),
      const SizedBox(height: kDefaultPadding,),
      AlreadyHaveAnAccountCheck(
        login: false,
        press: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        },
      ),
    ],),);
  }
}
