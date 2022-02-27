import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height*0.1,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: scaffoldColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,4),
            blurRadius: 32,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor),
            SizedBox(width: _width*0.02),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  color: kPrimaryColor.withOpacity(0.05),
                ),
                child: Row(
                  children: [
                    Icon(Icons.sentiment_satisfied_alt_outlined,
                      color: kTextColor.withOpacity(0.7),
                      size: 18,
                    ),
                    SizedBox(width: _width*0.02),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.attach_file,
                      color: kTextColor.withOpacity(0.7),
                      size: 20,
                    ),
                    SizedBox(width: _width*0.02),
                    Icon(Icons.camera_alt_outlined,
                      color: kTextColor.withOpacity(0.7),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
