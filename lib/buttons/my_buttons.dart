import 'package:flutter/material.dart';
import 'package:wheel_and_clean/themes/colors.dart';
import 'package:wheel_and_clean/themes/text_style.dart';

class MyNumberTextFormField extends StatelessWidget {
  MyNumberTextFormField({
    super.key,
  });
  bool isFocused = false;
  var phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isFocused = true;
      },
      onTapCancel: () {
        isFocused = false;
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF1F0FF), borderRadius: BorderRadius.circular(8)),
        child: TextFormField(
          // focusNode:
          controller: phoneNumberController,
          keyboardType: TextInputType.numberWithOptions(),

          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 20, top: 13, left: 12, bottom: 12),
                child: Text(
                  "+91",
                  style: loginMobileNumberFont,
                ),
              ),
              // prefixText: "+91",
              hintText: "Mobile Number",
              hintStyle: loginMobileNumberFont.copyWith(
                  color: AppColors.translucentBlack),
              focusColor: const Color.fromARGB(255, 255, 16, 16),
              filled: true,
              fillColor: (isFocused)
                  ? Color(0xffF1F0FF)
                  : const Color.fromARGB(255, 248, 248, 248),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primaryColor)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.textFieldColor))),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  String headline = "";
  String discountedPrice = "";
  String discount = "";
  String actualPrice = "";

  MyCard({
    super.key,
    required this.headline,
    required this.discountedPrice,
    required this.discount,
    required this.actualPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 187,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEBEBEB), width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, top: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                      height: 96,
                      width: 108,
                      image:
                          AssetImage('assets/screensAsset/Group 161805.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$headline',
                      style: headlineFont,
                    ),
                    Text(
                      ". Pre-wash rinse",
                      style: descriptionFont.copyWith(fontSize: 10),
                    ),
                    Text(
                      ". Foam application",
                      style: descriptionFont.copyWith(fontSize: 10),
                    ),
                    Text(
                      ". Hand wash",
                      style: descriptionFont.copyWith(fontSize: 10),
                    ),
                    Text(
                      ". Wheel cleaning",
                      style: descriptionFont.copyWith(fontSize: 10),
                    ),
                    Text(
                      ". Rinse and dry",
                      style: descriptionFont.copyWith(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Color(0xffEBEBEB),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 12),
            child: Row(
              children: [
                Text(
                  "\u20B9$discountedPrice/-",
                  style: headlineFont.copyWith(fontSize: 16),
                ),
                SizedBox(width: 6),
                Text(
                  "\u20B9$actualPrice/-",
                  style: headlineFont.copyWith(
                      fontSize: 12, color: AppColors.translucentBlack),
                ),
                SizedBox(width: 6),
                Container(
                  height: 16,
                  width: 62,
                  decoration: BoxDecoration(
                      color: AppColors.discountColor,
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                      child: Text(
                    'Flat $discount% off',
                    style: discountFont,
                  )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.166,
                ),
                button(value: "Add", height: 33, width: 93)
              ],
            ),
          )
        ],
      ),
    );
  }
}

InkWell myPasswordTextFormField(
    {var textEditingController,
    String hint = "",
    Color nonFocusedColor = AppColors.textFieldColor,
    Color focusedColor = Colors.white,
    Color borderColor = Colors.black,
    Color focusedBorderColor = Colors.black,
    bool isFocused = false}) {
  return InkWell(
    onTap: () {
      isFocused = true;
    },
    onTapCancel: () {
      isFocused = false;
    },
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xffF1F0FF), borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        // focusNode:
        controller: textEditingController,
        obscureText: true,

        decoration: InputDecoration(

            // prefixText: "+91",
            hintText: "Password",
            hintStyle: loginMobileNumberFont.copyWith(
                color: AppColors.translucentBlack),
            focusColor: const Color.fromARGB(255, 255, 16, 16),
            filled: true,
            fillColor: (isFocused)
                ? Color(0xffF1F0FF)
                : const Color.fromARGB(255, 248, 248, 248),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.textFieldColor))),
      ),
    ),
  );
}

Container button(
    {required String value, required double height, required double width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: const Color(0xff5546FF), borderRadius: BorderRadius.circular(8)),
    child: Center(child: Text("$value", style: blueButtonFontStyling)),
  );
}
