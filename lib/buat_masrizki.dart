import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class Gradient extends StatelessWidget {
  const Gradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kColor1,
              scaffoldColor,
            ]),
      ),
    );
  }
}
