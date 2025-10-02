import 'package:court_booking/screens/package_duration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AppColors {
  static const primaryText = Color(0xFF1F2937);
  static const secondaryText = Color(0xFF4B5563);
  static const buttonBg = Color(0xFF1F2937);
}

class BuildBookingCard extends StatelessWidget {
  const BuildBookingCard({
    super.key,
    required this.title,
    required this.category,
    required this.rate,
    required this.price,
    required this.img,
  });

  final String title;
  final String category;
  final String rate;
  final int price;
  final String img;

  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const PackageDurationPage()),
        );
      },
      child: Container(
        constraints: const BoxConstraints(maxWidth: 352, minHeight: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.asset(
                'assets/images/$img',
                width: double.infinity,
                height: 192,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 192,
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryText,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/star.png",
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rate,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      category,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$formattedPrice/hour',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryText,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PackageDurationPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonBg,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Select",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
