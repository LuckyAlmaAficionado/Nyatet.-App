import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.readOnly = false,
    this.onSaved,
    this.labelText,
    this.obsecureText = false,
    this.fillColor,
    this.filled,
    this.onChanged,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool readOnly;
  final Function(String?)? onSaved;
  final String? labelText;
  final bool obsecureText;
  final Color? fillColor;
  final bool? filled;
  final Function(String)? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
      autocorrect: false,
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly,
      obscureText: obsecureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 17,
        ),
        labelStyle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        hintStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
        errorStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
        labelText: labelText,
        hintText: hintText,
        filled: filled,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(7),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade300),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
    );
  }
}
