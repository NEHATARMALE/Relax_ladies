import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {

  final Widget child;

  const WelcomeBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.orangeAccent, Colors.pinkAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0,1.0],
          tileMode: TileMode.clamp

        )
      ),
      width: double.infinity,
      height: size.height,
      child: Stack(
      alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left:0,
              child: Image.asset('assets/images/main_top.png',
              color: Colors.deepPurple.shade300,
              width: size.width *0.3,
              ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png',
              color: Colors.deepPurple.shade300,
              width: size.width * 0.2,
            ),

          ),
          child,
        ],

      ),
    );
  }
}
