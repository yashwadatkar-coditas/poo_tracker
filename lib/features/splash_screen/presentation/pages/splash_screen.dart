import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return Material(
      
      color: greenColor,
      child: Column(
       
        children: [
          Padding(
            padding:  EdgeInsets.only(left: width*0.30 , right: width*0.30 , top: height*0.223 , bottom: height*0.151),
            child: FittedBox(child: Text('PooTracker',style: customFont(fontSize: 30 , fontWeight:FontWeight.w700),)),
          ),
          SvgPicture.asset('assets/images/logo.svg',width: width*0.44,height: height*0.1372),
          const Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.only( bottom:height*0.042 ),
            child: FittedBox(child: Text('version 1.0',style: customFont(fontSize: 16, fontWeight: FontWeight.w400),)),
          )
        ],
      ),
    );
  }
}