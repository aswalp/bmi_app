import 'package:bmi/view/Bmi_buttons_ui.dart';
import 'package:bmi/view/bmi_show_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class Bmi_Ui1 extends ConsumerWidget {
  const Bmi_Ui1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f5f9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff4f5f9),
        elevation: 0,
        title: Text(
          "BMI",
          style: GoogleFonts.inter(
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff94979c), width: 0.1),
                    // color: const Color(0xfff4f5f7),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffe6e7e9),
                        Color(0xfff4f5f7),
                        Color(0xfff4f5f7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    // boxShadow: const [
                    //   BoxShadow(
                    //       color: Colors.grey,
                    //       offset: Offset(1, 2),
                    //       blurRadius: 5)
                    // ],
                  ),
                  child: Text(
                    "WEIGHT",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(0xff94979c)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "75.00",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xfff4953e)),
                    ),
                    Text(
                      "KILOGRAM",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: const Color(0xff94979c)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff94979c), width: 0.1),
                    // color: const Color(0xfff4f5f7),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffe6e7e9),
                        Color(0xfff4f5f7),
                        Color(0xfff4f5f7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 2),
                          blurRadius: 5)
                    ],
                  ),
                  child: Text(
                    "HEIGHT",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(0xff94979c)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "69.00",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xff94979c)),
                    ),
                    Text(
                      "INCHES",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: const Color(0xff94979c)),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          // Bmi_Show_ui(),
          AllButtons_ui(),
        ],
      ),
    );
  }
}

class MainArrowbutton extends StatelessWidget {
  const MainArrowbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        // padding: const EdgeInsets.all(20.0),
        height: 90,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff94979c), width: 0.1),
          // color: const Color(0xfff4f5f7),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffe6e7e9),
              Color(0xfff4f5f7),
              Color(0xfff4f5f7),
            ],
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
          ],
        ),
        child: const Icon(
          Icons.arrow_back,
          size: 24,
          color: Color(0xfff4953e),
        ));
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required String mainname,
  }) : _mainname = mainname;

  final String _mainname;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      // padding: const EdgeInsets.all(20.0),
      height: 90,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff94979c), width: 0.1),
        // color: const Color(0xfff4f5f7),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffe6e7e9),
            Color(0xfff4f5f7),
            Color(0xfff4f5f7),
          ],
        ),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
        ],
      ),
      child: Text(
        _mainname,
        style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: const Color(0xfff4953e)),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required String number,
  }) : _number = number;

  final String _number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      // padding: const EdgeInsets.all(20.0),
      height: 60,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff94979c), width: 0.1),
        // color: const Color(0xfff4f5f7),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffe6e7e9),
            Color(0xfff4f5f7),
            Color(0xfff4f5f7),
          ],
        ),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
        ],
      ),
      child: Text(
        _number,
        style: GoogleFonts.inter(
            fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
      ),
    );
  }
}
