import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/account/header.dart';
import 'package:paylater_startup/util/colors.dart';

import 'account_body.dart';

class Account_Page extends StatelessWidget {
  const Account_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                Header(_width, _height),
                Account_Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
