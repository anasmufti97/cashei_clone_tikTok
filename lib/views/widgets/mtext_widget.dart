import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MText extends StatelessWidget {
  String? text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? colors;

  MText(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.colors});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: GoogleFonts.montserrat(
          color: colors ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? 17),
    );
  }
}
