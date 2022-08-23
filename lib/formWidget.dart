import 'package:flutter/material.dart';
import 'package:flutter_basics_assignment_1_social_media_app/GradientButton.dart';
import 'package:flutter_basics_assignment_1_social_media_app/screens/category.dart';
import 'package:flutter_basics_assignment_1_social_media_app/screens/newCategory.dart';

class FormWidget extends StatelessWidget {
  FormWidget({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _password = '';
  bool _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      return true;
    }
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
                onChanged: (value) => _userEmail = value,
                autofocus: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0.01,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0.01,
                    ),
                  ),
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  if (value.trim().length < 8) {
                    return 'Password must be at least 8 characters in length';
                  }
                  // Return null if the entered password is valid
                  return null;
                },
                obscureText: true,
                onChanged: (value) => _password = value,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0.01,
                    ),
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0.01,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'FORGOT PASSWORD',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              GradientButton(
                onTapp: () {
                  _trySubmitForm()? Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CategoryScreenNew())):null;
                },
                txt: "LOG IN",
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('OR LOG IN BY'),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xFFD1C4E9),
                    radius: 25,
                    child: Icon(
                      Icons.g_mobiledata_outlined,
                      size: 35,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFD1C4E9),
                    child: Icon(
                      Icons.facebook_sharp,
                      size: 35,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text(
                    'Don\'t have account?',
                  ),
                  Text(' SIGN UP',
                      style: TextStyle(
                        fontSize: 20,
                        textBaseline: TextBaseline.alphabetic,
                        color: Colors.deepPurple,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
