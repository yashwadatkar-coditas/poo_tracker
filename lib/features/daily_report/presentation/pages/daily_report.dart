import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/widgets/custom_image_card.dart';
import 'package:poo_tracker/core/widgets/date_card.dart';
import 'package:poo_tracker/core/widgets/poop_info_card.dart';
import 'package:poo_tracker/core/widgets/quad_button.dart';


class DailyReport extends StatelessWidget {
  const DailyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7f9),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
          SvgPicture.asset(
            'assets/images/design_pattern.svg',
            alignment: Alignment.topRight,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SvgPicture.asset(
            'assets/images/design_pattern_two.svg',
            alignment: Alignment.bottomLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 50, child: SizedBox()),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: greenColor,
                    ),
                    const Expanded(flex: 16, child: SizedBox()),
                    Text(
                      'Daily Report',
                      style: customFont(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: greenColor),
                    ),
                    const Expanded(flex: 124, child: SizedBox()),
                    GestureDetector(
                        onTap: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text('Share Infomation',textAlign: TextAlign.center,style: customFont(fontSize: 25 , fontWeight: FontWeight.w700 , color: Color(0xff666666)),),
                              actions: [

                              ],
                            );
                          },);
                        },
                        child: SvgPicture.asset('assets/images/share_box.svg')),
                    const Expanded(flex: 20, child: SizedBox()),
                  ],
                ),
                const Expanded(flex: 47, child: SizedBox()),
                Expanded(
                  flex: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DateCard(index: index),
                      );
                    },
                  ),
                ),
                const Expanded(flex: 423, child: SizedBox()),
                Text(
                  'Memo',
                  style: customFont(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff666666)),
                ),
                const Expanded(flex: 20, child: SizedBox()),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Quisque suscipit fringilla tortor. \nNulla est libero.',
                  style: customFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff333333)),
                  textAlign: TextAlign.start,
                ),
                const Expanded(flex: 11, child: SizedBox()),
                const CustomImageCard(image: 'assets/icons/mountain_icon.svg'),
                const Expanded(flex: 45, child: SizedBox()),
                
              ],
            ),
          ),
        const  Positioned(
           bottom: 0,
           right: 0,
           child: QuadButton()
         ),

          const  Positioned(
           bottom: 474,
           right: 20,
           top: 284,
           left: 20,
           child: PoopInfoCard()
         ),
        ],
      ),
    );
  }
}
