import 'package:flutter/material.dart';
import 'package:flutter_basics_assignment_1_social_media_app/GradientButton.dart';
import 'package:flutter_basics_assignment_1_social_media_app/screens/category.dart';
import 'package:flutter_basics_assignment_1_social_media_app/formWidget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                color: Colors.white,
                child: const Image(
                  image: AssetImage('lib/images/img.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child:FormWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
