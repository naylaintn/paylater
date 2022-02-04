import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class verification_form extends StatefulWidget {
  const verification_form({Key? key}) : super(key: key);

  @override
  _verification_formState createState() => _verification_formState();
}

class _verification_formState extends State<verification_form> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(height: 50),
        TextFormField(
          decoration: const InputDecoration(
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
            labelText: "NIK",
            hintText: "Masukkan NIK sesuai KTP",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.idCard, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            labelText: "Tempat Lahir",
            hintText: "Masukkan tempat lahir sesuai KTP",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            labelText: "Tanggal Lahir",
            hintText: "DD/MM/YYYY",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.calendarDay, size: 20),
            ),
          ),
        ),

        SizedBox(height: 20),

        TextFormField(
          decoration: const InputDecoration(
            labelText: "BPJS Ketenagakerjaan",
            hintText: "Masukkan nomor BPJS Ketenagakerjaan",
            hintStyle: TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: FaIcon(FontAwesomeIcons.addressCard, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
