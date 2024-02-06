import 'package:coffee_ecommerce/constants/app_colors.dart';
import 'package:coffee_ecommerce/extensions/responsive_context.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              customHomeAppBar(context),
              searchBar(context)
            ],
          ),
        ),
      ),
    );
  }

  Container searchBar(BuildContext context) {
    return Container(
      width: context.width * 0.93,
      decoration: BoxDecoration(
          color: searchBarColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_rounded,
              color: textColor,
            ),
          ),
          // TextField(
          //   decoration: InputDecoration(
          //       labelText: "Search Coffee",
          //       hintStyle: TextStyle(color: Colors.grey)),
          // ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 4),
                  // height: context.width * 0.1,
                  decoration: BoxDecoration(
                      color: btnColor, borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings_input_component_rounded,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customHomeAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: const Row(
                    children: [
                      Text(
                        "Biratnagar,Nepal",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              "assets/profile.png",
              height: context.height * 0.1,
              width: context.width * 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
