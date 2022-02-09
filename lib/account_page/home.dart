import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/body.dart';

import '../account/header.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                Header(width, height),
                Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}