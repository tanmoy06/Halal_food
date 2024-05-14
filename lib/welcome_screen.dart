import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004333),
      body: SafeArea(
        child: Center(
          child: Text(
            'HalalFood',
            style: TextStyle(
              fontFamily: 'Gravedigger',
              fontWeight: FontWeight.w400,
              fontSize: 32,
              color: Color(0xFF96A4A0),
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(.25),
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
