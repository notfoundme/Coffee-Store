import 'package:coffee_ecommerce/constants/app_colors.dart';
import 'package:coffee_ecommerce/extensions/responsive_context.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: orderAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            //order Card
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: context.width * 0.4,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: btnColor,
                    ),
                    child: const Text(
                      "Deliver",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: context.width * 0.4,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xfff2f2f2),
                    ),
                    child: const Text(
                      "Pick up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            //3texts
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Biratnagar Nepal",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Pipal chowk, biratnagar, koshi, Nepal",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            //small row => Edit Address , Add Note
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  buttonChip("Edit Address", Icons.payments),
                  const SizedBox(
                    width: 14,
                  ),
                  buttonChip("Add Notes", Icons.edit_note),
                ],
              ),
            ),
            const Divider(),

            //image card Increment Decrement
            singleCoffeeCountCard(context),
            const SizedBox(
              height: 20,
            ),

            discountVoucherCard(context),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Payment Summary",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Rs. 400",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),

            //Delivery Fee row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Delivery Fee",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Rs. 200',
                          style: TextStyle(
                            color: Colors.black, // Set your text color
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            // Set the strikethrough decoration
                            decorationColor:
                                Colors.red, // Set the strikethrough color
                            decorationThickness:
                                2.0, // Set the strikethrough thickness
                          ),
                        ),
                      ),
                    ),

                    //
                    const Text(
                      "Rs. 100",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 8,
            )
            //Total Payment
            ,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Rs. 500",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),

            //Unknown Elements Row

            Row(children: [
              
            ],)
          ],
        ),
      ),
    );
  }

  Card discountVoucherCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/bgpic.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                    height: MediaQuery.of(context).size.width * 0.06,
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "1 Discount is applied",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }

  Row singleCoffeeCountCard(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        singleCoffeeImage(context),

        // number of coffee cart
        titleAndSubtitleColumn(),

        const Row(
          children: [
            CircleAvatar(
              child: Text("-"),
              minRadius: 16,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "2",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            CircleAvatar(
              child: Text("+"),
              minRadius: 16,
            ),
          ],
        ),
      ],
    );
  }

  Container singleCoffeeImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage(
              "assets/singlecoffee.png",
            ),
            fit: BoxFit.cover),
      ),
      height: context.width * 0.14,
      width: context.width * 0.14,
    );
  }

  Padding titleAndSubtitleColumn() {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          Text(
            "Cappucino",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            "with Chocolate",
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget buttonChip(String text, IconData iconData) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Icon(iconData),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }

  AppBar orderAppBar(BuildContext context) {
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
          "Order",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


