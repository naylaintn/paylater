import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:paylater_startup/util/theme.dart';

import 'home_page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paylater Startup',
      theme: theme(),
      home: LayoutBuilder(
        builder: ((BuildContext context, BoxConstraints constraints){
        double _width = constraints.maxWidth;
        double _height = constraints.maxHeight;
        return HomeScreen(_width, _height);
      }),
      ),
    );
  }
}


Widget Main(double _width, double _height) {
  return GetMaterialApp(
    theme: theme(),
    initialRoute: '/',
    defaultTransition: Transition.zoom,
    transitionDuration: const Duration(milliseconds: 1),
    getPages: [
      GetPage(name: '/', page: () => HomeScreen(_width, _height)),
    ],
    title: 'Paylater',
  );
}