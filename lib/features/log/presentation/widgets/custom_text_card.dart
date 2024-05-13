import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poo_tracker/core/fonts.dart';

class CustomTextCard extends StatelessWidget {
  const CustomTextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      color: const Color(0xfff5f7f9),
      elevation: 1,
      shadowColor: Colors.transparent,
      child: Padding(
        padding:  const EdgeInsets.all(35),
        child: Column(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque suscipit fringilla tortor. Nulla est libero.',textAlign: TextAlign.start,style: customFont(fontSize: 16 , fontWeight: FontWeight.w400,color: Color(0xff333333)),)
          ],
        ),
      ),

    );
  }
}