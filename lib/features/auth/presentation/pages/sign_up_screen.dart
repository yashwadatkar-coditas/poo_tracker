import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/widgets/custom_filled_button.dart';
import 'package:poo_tracker/features/auth/presentation/pages/login_screen.dart';
import 'package:poo_tracker/features/log/presentation/pages/create_log.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff5f7f9),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 270,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(flex: 99, child: SizedBox()),
                          Expanded(
                              child: Text(
                            'Create\nNew Account',
                            style: customFont(
                                color: Colors.transparent,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          )),
                          const Expanded(child: SizedBox())
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 626, child: SizedBox())
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
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(flex: 99, child: SizedBox()),
                  Text(
                    'Create\nNew Account',
                    style: customFont(
                        color: greenColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const Expanded(flex: 109, child: SizedBox()),
                  SvgPicture.asset('assets/icons/person_icon.svg'),
                  const Expanded(flex: 49, child: SizedBox()),
                  Text(
                    'Sign Up',
                    style: customFont(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff666666)),
                  ),
                  const Expanded(flex: 40, child: SizedBox()),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                      'Enter your email',
                      style: customFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff666666)),
                    )),
                  ),
                  const Expanded(flex: 35, child: SizedBox()),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                      'Enter your password',
                      style: customFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff666666)),
                    )),
                  ),
                  const Expanded(flex: 35, child: SizedBox()),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                      'Re Enter your password',
                      style: customFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff666666)),
                    )),
                  ),
                  const Expanded(flex: 35, child: SizedBox()),
                  Row(
                    children: [
                      Checkbox(
                      side: BorderSide(width: 1.5,color: Color(0xff999999)),
                      value: false, 
                      onChanged: (bool? value) {
                        
                      },
                    ),
                      Flexible(
                        child: Text(
                          'Agree app Policy and Term',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff999999)),
                        ),
                      )
                    ],
                  ),
                  const Expanded(flex: 35, child: SizedBox()),
                CustomFilledButton(text: 'Sign Up',onpressed: () {
                    return Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateLog()));
                  },),
                  const Expanded(flex: 50, child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Login',
                              style: customFont(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff999999)),
                            )),
                      ),
                    ],
                  ),
                  const Expanded(
                    flex: 79,
                    child: SizedBox()),

                   
                ],
              ),
            )
          ],
        ));
  }
}
