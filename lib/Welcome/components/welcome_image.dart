import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';
class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: kDefaultPadding*6,),
        Text('Welcome to Foodie',style: Theme.of(context).textTheme.headline4!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: kDefaultPadding*2,),
        Row(children: [
          Spacer(),
          Container(
            height: 300,
            width: 300,
            child: SvgPicture.asset('assets/icons/foodlogo.svg'),
          ),
          Spacer(),
        ],),
        SizedBox(height: kDefaultPadding*2,),
      ],
    );
  }
}
