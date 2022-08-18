import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    Key? key,
    required this.label,
    required this.width,
    required this.height,
    required this.press,
  }) : super(key: key);

  final String label;
  final double width, height;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(.1),
              offset: Offset(1, 0),
              blurRadius: 25,
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.lato(
              color: black.withOpacity(.7),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
