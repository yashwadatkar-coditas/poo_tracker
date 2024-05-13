import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/color_poop_icon_list.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/poop_numbers.dart';
import 'package:table_calendar/table_calendar.dart';
class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          calendarBuilders: CalendarBuilders(
           
            markerBuilder: (context, day, events) {
           if (day.isBefore(DateTime(day.year, day.month, 11))) {
               final index = day.day -1; // Adjust index for zero-based list
                if (index >= 0 && index < colorPoopIconList.length) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                                           const  Expanded(
                        flex: 4,
                        child: SizedBox()),
                      Text(index.toString()),
                     const  Expanded(
                        flex: 4,
                        child: SizedBox()),
                      SvgPicture.asset(colorPoopIconList[index],width: 10,height: 10,),
                                           const  Expanded(
                        flex: 7,
                        child: SizedBox()),
                        
                    ],
                  );
                }
              }
            
            
          },),
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: DateTime.now(),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: customFont(fontSize: 16 , fontWeight: FontWeight.w400 , color: const Color(0xff2c2c2c)),
            weekendStyle: customFont(fontSize: 16 , fontWeight: FontWeight.w400 , color: const Color(0xff2c2c2c)),
          ),
          daysOfWeekHeight: 80,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: customFont(fontSize: 20 , fontWeight: FontWeight.w600 , color: const Color(0xff2c2c2c))
          ),
          calendarStyle: CalendarStyle(
            cellMargin: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
            outsideDaysVisible: false,
            defaultDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xffF2F2F2),
                width: 1,
              ),
            ),
            todayDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: greenColor,
                width: 1,
              ),
            ),
            weekendDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xffF2F2F2),
                width: 1,
              ),
            ),
            defaultTextStyle: customFont(fontSize: 16 , fontWeight: FontWeight.w700 , color: const Color(0xff666666)),
            todayTextStyle:  customFont(fontSize: 16 , fontWeight: FontWeight.w700 , color: const Color(0xff666666)),
            weekendTextStyle:  customFont(fontSize: 16 , fontWeight: FontWeight.w700 , color: const Color(0xff666666)),
            cellAlignment: Alignment.topLeft,
            cellPadding: const EdgeInsets.only(left: 6, top: 2),
          ),
      
        ),
      ],
    );
  }
}