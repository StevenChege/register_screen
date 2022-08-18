import 'package:flutter/material.dart';

import '../constants.dart';

class RegistrationTextField extends StatelessWidget {
  const RegistrationTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textEditingController,
    required this.obscureText,
  }) : super(key: key);

  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .85,
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        controller: textEditingController,
        keyboardType: keyboardType,
        obscureText: obscureText,
        clipBehavior: Clip.antiAlias,
        cursorColor: black,
        cursorWidth: .9,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 25),
          fillColor: white,
          hoverColor: white,
          border: kDefaultOutlineInputBorder,
          focusedBorder: kDefaultOutlineInputBorder,
        ),
      ),
    );
  }
}
