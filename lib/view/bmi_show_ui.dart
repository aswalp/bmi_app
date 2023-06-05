import 'package:bmi/controller/bmicontroller.dart';
import 'package:bmi/view/bmi_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class Bmi_Show_ui extends ConsumerWidget {
  const Bmi_Show_ui({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _totalbmi = ref.watch(bmiProvidertotal);
    double _total = double.parse(_totalbmi);
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            // padding: const EdgeInsets.all(20.0),
            height: 250,
            width: MediaQuery.of(context).size.width,
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
                BoxShadow(
                    color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _totalbmi,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                          fontSize: 60,
                          color: const Color(0xfff4953e)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BMI",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: const Color(0xff94979c)),
                        ),
                        _total > 25
                            ? Text(
                                "OverWeight",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.red),
                              )
                            : _total > 16
                                ? Text("Normal",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.green))
                                : Text("UnderWeight",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.blue)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 90,
                    child: Image.asset(
                      "assets/images/bmitag.png",
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {
              ref.watch(pageController).animateToPage(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
            },
            child: Container(
                margin: const EdgeInsets.all(8),
                // padding: const EdgeInsets.all(20.0),
                height: 60,
                width: 60,
                alignment: Alignment.center,
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
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: Color(0xfff4953e),
                )),
          )
        ],
      ),
    );
  }
}
