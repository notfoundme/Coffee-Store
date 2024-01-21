import 'package:coffee_ecommerce/constants/app_colors.dart';
import 'package:coffee_ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: myLinearGradient),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                imageContainer(context),

                // Middlte Texts
                Positioned(
                  bottom: 20,
                  child: Column(
                    children: [
                      twoTexts(),

                      //btn
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: btnColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 8),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container imageContainer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/bgpic.png",
            ),
            fit: BoxFit.cover),
      ),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
    );
  }

  Column twoTexts() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Coffee so good ,\nYour taste buds,\nwill love it",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        // Text(
        //   "Hello hello",
        //   style: TextStyle(color: Colors.red),
        // ),

        //small text
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "The best grain, the finest roast, the \npowerful flavor.",
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
