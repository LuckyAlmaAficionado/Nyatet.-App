import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget loadingContent = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Center(child: CircularProgressIndicator()),
    const SizedBox(height: 5),
    Text(
      'Loading Content',
      style: GoogleFonts.quicksand(
        fontWeight: FontWeight.w600,
      ),
    ),
  ],
);
