import 'package:flutter/material.dart';

import 'no_account_text.dart';
import 'sign_form.dart';

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
                SizedBox(height: _height * 0.04),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Masuk dengan email dan password kamu",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: _height * 0.08),
                SignForm(),
                SizedBox(height: _height * 0.08),
                const SizedBox(height: 20),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
