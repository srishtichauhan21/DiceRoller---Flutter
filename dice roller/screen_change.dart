import 'package:flutter/material.dart';
import 'package:my_app01/gradient_container.dart';
import 'package:my_app01/dice_roller.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  var currentScreen = "home";

  void changeScreen() {
    // app rebuild -> build method -> reload
    setState(() {
      currentScreen = "screen-two";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentScreen == "home") {
      return GradientContainer(
          changeScreen, [Colors.cyan, Colors.pink, Colors.orange]);
    }
    return const DiceRoller();
  }
}
