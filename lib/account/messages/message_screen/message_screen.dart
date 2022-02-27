import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/account/messages/message_screen/message_body.dart';
import 'package:paylater_startup/util/colors.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.grey.withOpacity(0.2),
        backgroundColor: scaffoldColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Brand Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor)),
                Text("Last online 46m ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontStyle: FontStyle.italic)),
              ],
            ),
            IconButton(
                onPressed: (){},
                icon: const FaIcon(FontAwesomeIcons.video, color: kPrimaryColor, size: 15),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: MessagesBody(),
      ),
    );
  }
}
