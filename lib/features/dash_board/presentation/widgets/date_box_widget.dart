import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/fonts.dart';

class DateBoxWidget extends StatelessWidget {
  const DateBoxWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey, // Border color
      strokeWidth: 1, // Border width
      radius: Radius.circular(10), // Border radius
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Text(
              'Mon',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8), // Spacing between text and image
            SvgPicture.asset(
              'assets/icons/your_image.svg', // Path to your SVG image
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
