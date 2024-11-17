import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NormalButtonCustom extends StatelessWidget {
  const NormalButtonCustom({
    super.key,
    required this.title,
    this.onTap,
    this.buttonColor,
  });

  final String title;
  final Function()? onTap;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? HexColor("#0e766d"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text(
          title,
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
