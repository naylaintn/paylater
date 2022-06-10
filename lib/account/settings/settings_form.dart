import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            labelText: "Nama Lengkap",
            hintText: "Masukkan nama lengkap sesuai KTP",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.user, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            labelText: "Username",
            hintText: "Pilih username",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.user, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            labelText: "Nomor Telepon",
            hintText: "Masukkan nomor telepon aktif",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.phone, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            labelText: "Email",
            hintText: "email@email.com",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.at, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
