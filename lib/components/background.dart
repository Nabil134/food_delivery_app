
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key,required this.child,
    this.topImage='assets/images/main_top.png',
  });
final String topImage;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child:
                Image.asset(topImage,
                  width: 120,
                ),
            ),
SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
