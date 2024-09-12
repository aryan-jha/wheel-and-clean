import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wheel_and_clean/buttons/my_buttons.dart';
import 'package:wheel_and_clean/themes/text_style.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  Image(image: AssetImage('assets/screensAsset/apps-fill.png')),
              label: "Services",
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage('assets/screensAsset/splitscreen_add.png')),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(
                      'assets/screensAsset/account-circle-line.png')),
              label: "Account",
            ),
          ]),
      appBar: AppBar(
          elevation: 1,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shadowColor: const Color.fromARGB(255, 204, 204, 204),
          toolbarHeight: 104,
          title: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 24,
                  width: 24,
                  image: AssetImage('assets/screensAsset/taxi_alert.png'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                Text(
                  "Add Vehicle",
                  style: headlineFont.copyWith(fontSize: 16),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.008,
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: Image(
                      height: 11.67,
                      width: 11.67,
                      image: AssetImage('assets/screensAsset/add.png')),
                )
              ],
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              MyCard(
                headline: "Foam Wash & Interior Cleaning",
                discountedPrice: "699",
                discount: "30",
                actualPrice: "1000",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              MyCard(
                headline: "Foam Wash & Interior Cleaning",
                discountedPrice: "699",
                discount: "30",
                actualPrice: "1000",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              MyCard(
                headline: "Foam Wash & Interior Cleaning",
                discountedPrice: "699",
                discount: "30",
                actualPrice: "1000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
