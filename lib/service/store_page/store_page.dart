import 'package:flutter/material.dart';
import 'package:paylater_startup/service/store_page/description.dart';
import 'package:paylater_startup/service/store_page/header.dart';

import 'body.dart';

class ServiceStorePage extends StatelessWidget {
  const ServiceStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: _width,
        height: _height,
        child: ListView(
          children: [
            ServiceHeader(),
            SizedBox(height: _height*0.02),
            ServiceDescription(),
            SizedBox(height: _height*0.02),
            ServiceStoreBody(),
          ],
        ),
      ),
    );
  }
}
