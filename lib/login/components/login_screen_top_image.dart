import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: kDefaultPadding,),
      Text('LOGIN',style: Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,),
      const SizedBox(height: kDefaultPadding,),
      Row(children: [
        const Spacer(),
        Container(
          height: 300,
          width: 300,
          child: SvgPicture.asset('assets/icons/delivery.svg'),
        ),
        const Spacer(),
      ],),
    ],);
  }
}
