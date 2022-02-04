import 'package:flutter/material.dart';
import 'package:paylater_startup/login_screen/components/custom_surfix_icon.dart';
import 'package:paylater_startup/login_screen/components/default_button.dart';
import 'package:paylater_startup/login_screen/components/form_error.dart';
import 'package:paylater_startup/login_screen/components/no_account_text.dart';
import 'package:paylater_startup/util/constants.dart';

class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: _height * 0.04),
              Text(
                "Lupa Password",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Masukkan email anda dan kami akan mengirim \link untuk kembali ke akun kamu",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: _height * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email = "";


  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
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
          ),
          SizedBox(height: 30),
          FormError(errors),
          SizedBox(height: _height * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
              }
            },
          ),
          SizedBox(height: _height * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
