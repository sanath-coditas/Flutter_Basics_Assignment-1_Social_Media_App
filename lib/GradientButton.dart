import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onTapp;
  final String txt;
  const GradientButton({required this.txt,required this.onTapp});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.4,
                0.6,
                1.0,
              ],
              colors: [
                Colors.deepPurple,
                Color(0xFF9575CD),
                Color(0xFFB388FF),
                Color(0xFF7C7DFF),
              ],
            )),
        child: Center(
            child: Text(
              txt,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
      ),
    );
  }
}
