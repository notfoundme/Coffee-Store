import 'dart:html';

import 'package:coffee_ecommerce/constants/google_font.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: detailScreenAppBar(context),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/singlecoffee.png",
                    ),
                    fit: BoxFit.cover),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ]),
      ),
    );
  }

  AppBar detailScreenAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.chevronLeft),
        onPressed: () {
          // Handle the back button press
          Navigator.pop(context);
        },
      ),
      title: Center(
          child: Text(
        "Detail",
        style:sora
        ), 
      ),
      actions: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.heart),
          onPressed: () {
            // Handle the favorite button press
          },
        ),
      ],
    );
  }
}
