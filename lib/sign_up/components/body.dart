import 'package:flutter/material.dart';
import 'package:paylater_startup/util/constants.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: _height * 0.04), // 4%
                Text("Daftar Akun", style: headingStyle),
                Text(
                  "Masukkan data anda",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: _height * 0.08),
                SignUpForm(),
                SizedBox(height: _height * 0.08),
                SizedBox(height: 20),
                Text(
                  'Dengan melanjutkan anda setuju dengan \nTerm and Condition ini',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
