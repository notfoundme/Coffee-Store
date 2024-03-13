import 'package:coffee_ecommerce/constants/app_colors.dart';
import 'package:coffee_ecommerce/extensions/responsive_context.dart';
import 'package:coffee_ecommerce/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: detailScreenAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(children: [
            //Image
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/singlecoffee.png",
                    ),
                    fit: BoxFit.cover),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 10,
            ),

            // Title and subtitle
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 4),
                  child: Text(
                    "Cappucino",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Text(
                  "with chocolate",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),

                SizedBox(
                  height: 10,
                ),

                //Row containing ratings and icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        //rating icon
                        FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xfffbbe21),
                        ),
                        //Rating
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "4.8",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    //Right two contaimner row
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: unSelectedBtnColor,
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: Color(0xfffbbe21),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: unSelectedBtnColor,
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: Color(0xfffbbe21),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //description section
                Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: const ExpansionTile(
                    title: Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    children: [
                      // Put your description content here
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // size
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 4),
                  child: Text(
                    "Size",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: context.width * 0.25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: unSelectedBtnColor,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Text(
                        "S",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: context.width * 0.25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: unSelectedBtnColor,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Text(
                        "M",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: context.width * 0.25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: unSelectedBtnColor,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //price column
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Rs 4.53",
                          style: TextStyle(
                              color: btnColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),

                    //buy now btn
                    //btn
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderScreen()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * 0.61,
                        decoration: BoxDecoration(
                          color: btnColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 14.0, horizontal: 8),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  AppBar detailScreenAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(FontAwesomeIcons.chevronLeft),
        onPressed: () {
          // Handle the back button press
          Navigator.pop(context);
        },
      ),
      title: const Center(
        child: Text(
          "Detail",
        ),
      ),
      actions: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.heart),
          onPressed: () {
            // Handle the favorite button press
          },
        ),
      ],
    );
  }
}
