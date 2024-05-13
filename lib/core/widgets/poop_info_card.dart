import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';

class PoopInfoCard extends StatelessWidget {
  const PoopInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 0.3,
      color: Colors.white,
      child: Column(
      
        children: [

          Padding(
            padding:const  EdgeInsets.symmetric(vertical: 15 , horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  const SizedBox(height: 29),
                  SvgPicture.asset('assets/icons/color_poop_icon.svg')
                ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('10:05 PM',style: customFont(fontSize: 16 , fontWeight: FontWeight.w400 , color: const Color(0xff999999)),),
                     const SizedBox(width: 13),
                      Text('25ºC',style: customFont(fontSize: 16 , fontWeight: FontWeight.w400 , color: const Color(0xff999999)),),
                      const SizedBox(width: 16),
                      SvgPicture.asset('assets/icons/cloud_icon.svg')
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('Separate hard lumps',style: customFont(fontSize: 20 , fontWeight: FontWeight.w500 , color: const Color(0xff333333)),),
                    const SizedBox(height: 22),
                    // SizedBox(
                    //   width: 20,
                    //   height: 20,
                    //   child: const LinearProgressIndicator())
                ],)
              ],
            ),
          ),
         const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              children: [
                Expanded(child:LinearProgressIndicator(
                
                  value: 0.65,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  minHeight: 7,
                  backgroundColor: Color(0xffebebeb),
                  
                  
                ))
              ],
            ),
          ),

         const  SizedBox(height: 8),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 23),
           child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('10:05',style: customFont(fontSize: 10 , fontWeight: FontWeight.w300, color: const Color(0xffEEA46B)),),
            Text('Total 30Min',style: customFont(fontSize: 10 , fontWeight: FontWeight.w300, color: const Color(0xff666666)),),
            Text('10:35',style: customFont(fontSize: 10 , fontWeight: FontWeight.w300, color: greenColor),),
            Text('Max 40Min',style: customFont(fontSize: 10 , fontWeight: FontWeight.w300, color: const Color(0xff666666)),),
           ],),
         )

        ],
      ),
    );
  }
}