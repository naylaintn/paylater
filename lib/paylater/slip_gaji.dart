import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class Slip_Gaji extends StatefulWidget {
  const Slip_Gaji({Key? key}) : super(key: key);

  @override
  _Slip_GajiState createState() => _Slip_GajiState();
}

class _Slip_GajiState extends State<Slip_Gaji> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Foto slip gaji", style: TextStyle(fontSize: 17)),
        SizedBox(height: 5),
        Container(
          width: _width,
          height: 180,
          decoration: BoxDecoration(
            color: scaffoldColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: kTextColor),
          ),
          child: FlatButton(
            onPressed: (){},
            child: FaIcon(FontAwesomeIcons.plus, size: 30),
          ),
        ),
        SizedBox(height: 5),
        Text("*Foto dalam format PNG/JPG", style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
