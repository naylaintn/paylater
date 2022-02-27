import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

import 'chat_body.dart';

class ChatScreenTemplate extends StatelessWidget {

  Chat chat;

  ChatScreenTemplate(this.chat);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: (){Get.toNamed("/message_page");},
      child: Container(
        color: scaffoldColor,
        width: _width,
        height: _height*0.1,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(chat.image),
            ),
            SizedBox(
              width: _width*0.6,
              height: _height*0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${chat.name}", style: TextStyle(fontSize: 15)),
                  Text("${chat.lastMessage}", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
            Text("${chat.time}", style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
