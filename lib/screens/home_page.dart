import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking/widgets/build_booking_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(
          "Sports Courts",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2937),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),

            BuildBookingCard(
              title: "Futsal Court A",
              category: "Indoor • Air Conditioned",
              rate: "4.8",
              price: 50000,
              img: "futsal-court.png",
            ),
          ],
        ),
      ),
    );
  }
}
