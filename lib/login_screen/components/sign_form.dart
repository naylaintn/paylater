import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/controller/login_controller.dart';
import 'package:paylater_startup/dashboard/dashboard_page.dart';
import 'package:paylater_startup/forgot_password/forgot_password_screen.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/constants.dart';
import 'package:paylater_startup/util/keyboard.dart';

import 'custom_surfix_icon.dart';
import 'default_button.dart';
import 'form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  LoginController _loginController = Get.find();

  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value as bool;
                  });
                },
              ),
              Text("Ingat saya"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors),
          SizedBox(height: 20),
          DefaultButton(
            text: "Masuk",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // _loginController.submitLogin(email, password, "ROLE_USER");
                // _loginController.views.value = 'LOGIN_ONGOING';
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.toString().isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.toString().length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukkan Password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue as String,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.toString().isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value.toString())) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "name@mailserver.com",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/Mail.svg"),
      ),
    );
  }
}
