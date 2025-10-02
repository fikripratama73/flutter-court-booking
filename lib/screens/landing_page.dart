import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking/screens/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/landing.png"),
                ),
              ),
            ),

            Container(
              height: 342,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Court Booking",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),

                  Text(
                    "Easily and quickly book sports courts at your convenience. Choose from a variety of courts, select your preferred duration, and confirm your booking seamlessly",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF4B5563),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Color(0xFF1C1C1C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 3,
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
