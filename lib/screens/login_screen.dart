import 'package:flutter/material.dart';
import 'package:wheel_and_clean/buttons/my_buttons.dart';
import 'package:wheel_and_clean/screens/services_screen.dart';
import 'package:wheel_and_clean/themes/text_style.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  var phoneNumberController = TextEditingController();
  var passwordController = TextEditingController();
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.204,
                ),
                Row(
                  children: [
                    Text(
                      "Log In to you Account",
                      textAlign: TextAlign.start,
                      style: loginHeadlineFont,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                Row(
                  children: [
                    Text(
                      'Mobile Number',
                      textAlign: TextAlign.start,
                      style: loginMobileNumberFont,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                MyNumberTextFormField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: loginMobileNumberFont,
                    ),
                  ],
                ),
                myPasswordTextFormField(
                    textEditingController: passwordController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text("Forgot Password?")],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.050,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServicesScreen()));
                    },
                    child: button(value: "Submit", height: 58, width: 335))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
