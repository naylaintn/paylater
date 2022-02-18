import 'package:flutter/material.dart';
import 'package:paylater_startup/service/template_service/service_template2.dart';

class ServiceGrid extends StatefulWidget {
  const ServiceGrid({Key? key}) : super(key: key);

  @override
  _ServiceGridState createState() => _ServiceGridState();
}

class _ServiceGridState extends State<ServiceGrid> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width,
      height: _height,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/3,
          ),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: ServiceTemplate2(),
            );
          }
      ),
    );
  }
}
