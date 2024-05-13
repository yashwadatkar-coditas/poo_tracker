import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/chart_data.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/widgets/custom_filled_button.dart';
import 'package:poo_tracker/core/widgets/custom_outlined_button.dart';
import 'package:poo_tracker/core/widgets/quad_button.dart';
import 'package:poo_tracker/features/dash_board/presentation/widgets/date_box_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../calender/presentation/pages/calender_page.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Expanded(flex: 50, child: SizedBox()),
                Row(
                  children: [
                    Text(
                      'Dash Board',
                      style: customFont(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: greenColor),
                    ),
                    const Expanded(flex: 170, child: SizedBox()),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/person_icon.svg',
                          height: 45,
                          width: 45,
                        ),
                        Positioned(
                          right: 0,
                          top: 2,
                          child: Container(
                            height: 9,
                            width: 9,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFFEEA46B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Expanded(
                    flex: 47,
                    child: SizedBox(
                      child: Row(
                        children: [
                          // DateBoxWidget(),
                        ],
                      ),
                    )),
                const Expanded(flex: 34, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 14,
                      width: 14,
                      decoration: const BoxDecoration(
                          color: Color(0xffEEA46B),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_downward,
                          size: 7,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CalenderPage()));
                      },
                      child: Text(
                        'View Calendar',
                        style: customFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffEEA46B)),
                      ),
                    )
                  ],
                ),
                const Expanded(flex: 34, child: SizedBox()),
                Row(
                  children: [
                    Text(
                      'Insight',
                      style: customFont(
                          color: const Color(0xff666666),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    const Expanded(flex: 79, child: SizedBox()),

                     Expanded(
                        flex: 111, child: CustomFilledButton(text: 'Week',onpressed: () {
                          return null;
                        },)),

                    const Expanded(flex: 10, child: SizedBox()),

                     Expanded(
                        flex: 111,
                        child: CustomOutLinedButton(
                          text: 'Month',
                          onpresses: () {
                            return null;
                          },
                        )),

                    // Expanded(child: SizedBox())
                  ],
                ),
                const Expanded(flex: 31, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Type chart compare',
                      style: customFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333)),
                    )
                  ],
                ),
                const Expanded(flex: 29, child: SizedBox()),
                Stack(
                  children: [
                                     SfCircularChart(
                    margin: const EdgeInsets.all(0),
                    series: [
                      DoughnutSeries<chartData, String>(
                        // explodeAll: true,
                        // explode: true,
                        dataSource: ChartData,
                        legendIconType: LegendIconType.circle,
                        radius: '120',
                        explodeOffset: '1',
                        explode: true,
                        explodeAll: true,
                        startAngle: 180,
                        endAngle: 180,

                  
                        xValueMapper: (chartData data, _) => data.x,
                        yValueMapper: (chartData data, _) => data.y,
                        pointColorMapper: (chartData data, _) => data.color,
                      ),
                      
                    ],
                    legend: Legend(
                      textStyle: customFont(color: greenColor,fontSize: 14,fontWeight: FontWeight.w400),
                itemPadding: 30,
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                  ),

                  Positioned(
                    top: 90,
                    left: 155,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Type 01',style: customFont(fontSize: 16 , fontWeight: FontWeight.w400,color: greenColor),),
                        SizedBox(),
                        Text('40%',style: customFont(fontSize: 50, fontWeight: FontWeight.w700,color: greenColor),),

                      ],
                    ))
                  ],

                ),
                const Expanded(flex: 35, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xffEEA46B),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                    ),
const SizedBox(width: 5),
                     Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xffF5F7F9),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                    ),

const SizedBox(width: 5),
                     Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xffF5F7F9),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                    )
                  ],
                ),
                const Expanded(flex: 63, child: SizedBox()),
              ],
            ),
          ),

const Positioned(
  bottom: 0,
  right: 0,
  child: QuadButton())
        ],
      ),
    );
  }
}
