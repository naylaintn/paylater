import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class KTP_form extends StatefulWidget {
  const KTP_form({Key? key}) : super(key: key);

  @override
  _KTP_formState createState() => _KTP_formState();
}

class _KTP_formState extends State<KTP_form> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Foto KTP", style: TextStyle(fontSize: 15)),
            SizedBox(height: 5),
            Container(
              width: 160,
              height: 160,
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
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Foto KTP dengan wajah", style: TextStyle(fontSize: 15)),
            SizedBox(height: 5),
            Container(
              width: 160,
              height: 160,
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
        ),
      ],
    );
  }
}
