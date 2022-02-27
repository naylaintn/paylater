import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class TextBody extends StatefulWidget {
  const TextBody({Key? key}) : super(key: key);

  @override
  _TextBodyState createState() => _TextBodyState();
}

class _TextBodyState extends State<TextBody> {

  @override
  Widget build(BuildContext context) {


    List demeChatMessages = [
      ChatMessage(
        text: "Hi Sajol,",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Hello, How are you?",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: true,
      ),
      ChatMessage(
        text: "Error happened",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_sent,
        isSender: true,
      ),
      ChatMessage(
        text: "This looks great man!!",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Glad you like it",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_view,
        isSender: true,
      ),
      ChatMessage(
        text: "Hi Sajol,",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Hello, How are you?",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: true,
      ),
      ChatMessage(
        text: "Error happened",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_sent,
        isSender: true,
      ),
      ChatMessage(
        text: "This looks great man!!",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Glad you like it",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_view,
        isSender: true,
      ),
      ChatMessage(
        text: "Hi Sajol,",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Hello, How are you?",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: true,
      ),
      ChatMessage(
        text: "Error happened",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_sent,
        isSender: true,
      ),
      ChatMessage(
        text: "This looks great man!!",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.viewed,
        isSender: false,
      ),
      ChatMessage(
        text: "Glad you like it",
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_view,
        isSender: true,
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: demeChatMessages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: demeChatMessages[index].isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                if (!demeChatMessages[index].isSender) ... [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage("assets/images/prada.jpg"),
                  ),
                ],
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: demeChatMessages[index].isSender ? kSecondaryColor : kSecondaryColor.withOpacity(0.1),
                  ),
                  child: Text(demeChatMessages[index].text,
                      style: TextStyle(
                        color: demeChatMessages[index].isSender ? Colors.white : kTextColor,
                      )),
                ),
                if (demeChatMessages[index].isSender) ... [
                  MessageStatusDot(status: demeChatMessages[index].messageStatus)
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;
  
  
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status){
        case MessageStatus.not_sent:
          return Colors.red;
          break;
        case MessageStatus.not_view:
          return kSecondaryColor;
          break;
        case MessageStatus.viewed:
          return kSecondaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }
    double _width = MediaQuery.of(context).size.width;
    
    return Container(
      height: _width*0.05,
      width: _width*0.05,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          status == MessageStatus.not_sent ? Icons.close : Icons.done,
          size: 8,
          color: Colors.white,
        ),
      ),
    );
  }
}

