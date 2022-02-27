import 'package:flutter/material.dart';
import 'package:paylater_startup/account/messages/message_screen/text_body.dart';
import 'package:paylater_startup/account/messages/message_screen/text_input.dart';


class MessagesBody extends StatelessWidget {
  const MessagesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: const [
        Expanded(
          child: TextBody(),
        ),
        ChatInputField(),
      ],
    );
  }
}

