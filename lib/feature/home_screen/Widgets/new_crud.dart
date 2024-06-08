import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class crud extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const crud({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.black54,
              width: 2,
              style: BorderStyle.solid
            )
          ),
          child: TextField(
            controller: controller
          ),
        ),
      ],
    );
  }
}