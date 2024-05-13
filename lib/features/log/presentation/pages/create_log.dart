import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/features/dash_board/presentation/pages/dash_board.dart';
import 'package:poo_tracker/features/log/presentation/widgets/circular_color_widget.dart';
import 'package:poo_tracker/core/widgets/custom_image_card.dart';
import 'package:poo_tracker/features/log/presentation/widgets/custom_text_card.dart';
import 'package:poo_tracker/features/log/presentation/widgets/grid_card_widget.dart';

class CreateLog extends StatefulWidget {
  const CreateLog({Key? key});

  @override
  State<CreateLog> createState() => _CreateLogState();
}

class _CreateLogState extends State<CreateLog> {
  int selectedCard = -1;
  int selectedColor = -1;
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 47),
                    child: Text(
                      'Create Log',
                      style: customFont(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: greenColor),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: const BorderSide(
                                color: Color.fromARGB(255, 156, 152, 152),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Color(0xffBDBDBD),
                              ),
                              SizedBox(width: 13),
                              Center(
                                child: Text(
                                  '2020/06/06',
                                  style: TextStyle(
                                      letterSpacing: .7,
                                      color: Color.fromARGB(255, 156, 152, 152),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: const BorderSide(
                                color: Color.fromARGB(188, 204, 204, 199),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '10:20 - 10:30 am',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 156, 152, 152),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: .2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Type',
                      style: customFont(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff666666)),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        vertical: 25), // Add this line
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable GridView's scrolling
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCard = index;
                            });
                          },
                          child: GridCardWidget(
                            index: index,
                            selectedCard: selectedCard,
                          ));
                    },
                  ),
                  Text('Colour',
                      style: customFont(
                          color: const Color(0xff666666),
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 15, crossAxisCount: 6),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColor = index;
                            });
                          },
                          child: CircularColorWidget(
                              selectedColorl: selectedColor, index: index));
                    },
                  ),
                  Text(
                    'Memo',
                    style: customFont(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff666666)),
                  ),
                const Padding(
                    padding:  EdgeInsets.only(top: 25 , bottom: 20),
                    child:  CustomTextCard(),
                  ),
                  const Row(
                    children: [
                      CustomImageCard(image: 'assets/icons/mountain_icon.svg'),
                      CustomImageCard(image: 'assets/icons/mountain_icon.svg'),
                      CustomImageCard(image: 'assets/icons/mountain_icon.svg'),
                    ],
                  )
                
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: const ButtonStyle(
                        overlayColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {},
                    child: Text('Cancel',
                        style: customFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff999999)))),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(greenColor),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 65, vertical: 11)),
                      elevation: MaterialStatePropertyAll(0)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const  DashBoard()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(width: 9),
                      Text(
                        'create',
                        style: customFont(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
