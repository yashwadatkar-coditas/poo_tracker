import 'package:flutter/material.dart';
import 'package:poo_tracker/core/fonts.dart';

class CustomOutLinedButton extends StatelessWidget {
  final String text;
  final Function() onpresses;
  const CustomOutLinedButton({super.key, required this.text, required this.onpresses});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(child: Text(text,style: customFont(color: const Color(0xff999999), fontSize: 20 , fontWeight: FontWeight.w400),)),
        ),
        onPressed:onpresses
      ),
    );
  }
}