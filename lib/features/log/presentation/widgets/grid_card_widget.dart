import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/images_list.dart';
import 'package:poo_tracker/core/widgets/text_list.dart';

class GridCardWidget extends StatelessWidget {
  final int index;
  final int selectedCard;
  const GridCardWidget({super.key, required this.index, required this.selectedCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
     // width: 114,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: selectedCard == index ? greenColor : Color(0xffE0E0E0), width: 1.5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SvgPicture.asset(poopImages[index]),
           const  SizedBox(height: 14),
           Flexible(child: Text(poopTextList[index],style: customFont(fontSize: 10 , fontWeight: FontWeight.w400 , color: const Color(0xff666666)),textAlign: TextAlign.center,))
          ],
        ),
      ),
    );
  }
}