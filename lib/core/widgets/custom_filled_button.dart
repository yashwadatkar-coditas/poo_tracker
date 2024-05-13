import 'package:flutter/material.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
   final Function() onpressed;
  const CustomFilledButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      //MediaQuery.of(context).size.width,
      child: FilledButton(
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenColor)),onPressed:onpressed,
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(child: Text(text,style: customFont(fontSize: 20 , fontWeight: FontWeight.w700 , color: Colors.white),)),
        )),
    );
  }
}