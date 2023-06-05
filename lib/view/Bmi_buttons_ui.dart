import 'package:bmi/view/bmi_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/bmicontroller.dart';

class AllButtons_ui extends ConsumerWidget {
  AllButtons_ui({super.key});
  double _bmi = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _weight = ref.watch(bmiProviderWeight);
    var _height = ref.watch(bmiProviderheight);
    var _switch = ref.watch(switching);

    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "7";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "7";
                    }
                  },
                  child: Buttons(number: "7")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "4";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "4";
                    }
                  },
                  child: Buttons(number: "4")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "1";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "1";
                    }
                  },
                  child: Buttons(number: "1")),
            ],
          ),
          Column(
            children: [
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "8";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "8";
                    }
                  },
                  child: Buttons(number: "8")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "5";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "5";
                    }
                  },
                  child: Buttons(number: "5")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "2";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "2";
                    }
                  },
                  child: Buttons(number: "2")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "0";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "0";
                    }
                  },
                  child: Buttons(number: "0")),
            ],
          ),
          Column(
            children: [
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "9";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "9";
                    }
                  },
                  child: Buttons(number: "9")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "6";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "6";
                    }
                  },
                  child: Buttons(number: "6")),
              InkWell(
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += "3";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += "3";
                    }
                  },
                  child: Buttons(number: "3")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      ref.read(bmiProviderWeight.notifier).state += ".";
                    } else {
                      ref.read(bmiProviderheight.notifier).state += ".";
                    }
                  },
                  child: Buttons(number: ".")),
            ],
          ),
          Column(
            children: [
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    ref.read(bmiProviderWeight.notifier).state = "0";
                    ref.read(bmiProviderheight.notifier).state = "0";
                  },
                  child: MainButton(mainname: "AC")),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    if (!_switch) {
                      if (_weight.length != 1) {
                        ref.read(bmiProviderWeight.notifier).state =
                            removeLastLetter(_weight);
                      }
                    } else {
                      if (_height.length != 1) {
                        ref.read(bmiProviderheight.notifier).state =
                            removeLastLetter(_height);
                      }
                    }
                  },
                  child: MainArrowbutton()),
              InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    ref.watch(pageController).animateToPage(
                          1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );

                    _bmi = double.parse(_weight) /
                        ((double.parse(_height) / 100) *
                            (double.parse(_height) / 100));
                    String s = _bmi.toStringAsFixed(2);

                    ref.read(bmiProvidertotal.notifier).state = s;
                  },
                  child: MainButton(mainname: "GO")),
            ],
          )
        ],
      ),
    );
  }
}

String removeLastLetter(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return str.substring(0, str.length - 1);
  }
}
