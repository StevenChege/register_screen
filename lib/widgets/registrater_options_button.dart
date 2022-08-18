import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class RegistraterOptionsButton extends StatelessWidget {
  const RegistraterOptionsButton({
    Key? key,
    this.onTap,
    this.text1,
    this.text2,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String? text1, text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: GestureDetector(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text1,
                style: GoogleFonts.lato(
                  color: black.withOpacity(.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " $text2",
                style: GoogleFonts.lato(
                  color: greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
