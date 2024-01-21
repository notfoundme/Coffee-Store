import 'package:flutter/material.dart';

void navigateTo(
    {required BuildContext context,
    required Widget screen,
    bool replace = false}) {
  if (replace == false) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  } else {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
  }
}
