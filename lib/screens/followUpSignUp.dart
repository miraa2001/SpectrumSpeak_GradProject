import 'package:flutter/material.dart';

import '../constants/Colors.dart';
class followUpSignUp extends StatefulWidget {
  const followUpSignUp({super.key});

  @override
  State<followUpSignUp> createState() => _followUpSignUpState();
}

class _followUpSignUpState extends State<followUpSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        body: SingleChildScrollView(
          child: Text('Hi'),
        )
    );
  }
}
