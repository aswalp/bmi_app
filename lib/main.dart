import 'package:bmi/view/bmi_show_ui.dart';
import 'package:bmi/view/bmi_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Bmi_Ui1(),
    );
  }
}
