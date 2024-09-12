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
            hintText: hint,
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
        color: const Color(0xff5546FF),
        borderRadius: BorderRadius.circular(60)),
    child: Center(child: Text("$value", style: blueButtonFontStyling)),
  );
}
