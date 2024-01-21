import 'package:coffee_ecommerce/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: myLinearGradient),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            
          ),
        ),
      ),
    );
  }
}
