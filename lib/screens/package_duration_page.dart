import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDurationPage extends StatelessWidget {
  const PackageDurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(
          "Package Duration",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2937),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}
