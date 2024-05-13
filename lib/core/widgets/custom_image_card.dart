import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImageCard extends StatelessWidget {
  final String image;
  const CustomImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      color:  const Color(0xfff5f7f9),
      elevation: 1,
      shadowColor: Colors.transparent,
      child: Padding(
        padding: const  EdgeInsets.all(20),
        child: Column(
          children: [
          SvgPicture.asset(image)
          ],
        ),
        
      ),

    );
  }
}