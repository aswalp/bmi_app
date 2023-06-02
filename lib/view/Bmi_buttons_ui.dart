import 'package:bmi/view/bmi_ui.dart';
import 'package:flutter/material.dart';

class AllButtons_ui extends StatelessWidget {
  const AllButtons_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Buttons(number: "7"),
              Buttons(number: "4"),
              Buttons(number: "1"),
            ],
          ),
          Column(
            children: [
              Buttons(number: "8"),
              Buttons(number: "5"),
              Buttons(number: "2"),
              Buttons(number: "0"),
            ],
          ),
          Column(
            children: [
              Buttons(number: "9"),
              Buttons(number: "6"),
              Buttons(number: "3"),
              Buttons(number: "."),
            ],
          ),
          Column(
            children: [
              MainButton(mainname: "AC"),
              MainArrowbutton(),
              MainButton(mainname: "GO"),
            ],
          )
        ],
      ),
    );
  }
}
