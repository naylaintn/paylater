import 'package:flutter/material.dart';
import 'package:paylater_startup/sign_up/sign_up_screen.dart';
import 'package:paylater_startup/util/colors.dart';

class NoAccountText extends StatelessWidget {

  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Belum punya akun? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen())),
          child: Text(
            "Daftar",
            style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
