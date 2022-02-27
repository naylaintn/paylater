import 'package:flutter/material.dart';
import 'package:paylater_startup/account/messages/chat_template.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {

    List chatData = [
      Chat(
        name: 'Brand Name',
        lastMessage: 'Stok barangnya masih tersedia ya kak...',
        time: '3m ago',
        image: 'assets/images/balenciaga.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Bisa dicek di Mall XXXX...',
        time: '59m ago',
        image: 'assets/images/gucci.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Jam 18.00-19.00 sudah full book...',
        time: '10m ago',
        image: 'assets/images/zap.png',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'xxxxxxxxxxxxxxxxxx......',
        time: '12m ago',
        image: 'assets/images/prada.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Stok masih tersedia ya kak...',
        time: '3m ago',
        image: 'assets/images/balenciaga.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Bisa dicek di Mall XXXX...',
        time: '59m ago',
        image: 'assets/images/gucci.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Jam 18.00-19.00 sudah full book...',
        time: '10m ago',
        image: 'assets/images/zap.png',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'xxxxxxxxxxxxxxxxxx......',
        time: '12m ago',
        image: 'assets/images/prada.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Stok barangnya masih tersedia ya kak...',
        time: '3m ago',
        image: 'assets/images/balenciaga.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Bisa dicek di Mall XXXX...',
        time: '59m ago',
        image: 'assets/images/gucci.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Jam 18.00-19.00 sudah full book...',
        time: '10m ago',
        image: 'assets/images/zap.png',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'xxxxxxxxxxxxxxxxxx......',
        time: '12m ago',
        image: 'assets/images/prada.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Stok masih tersedia ya kak...',
        time: '3m ago',
        image: 'assets/images/balenciaga.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Bisa dicek di Mall XXXX...',
        time: '59m ago',
        image: 'assets/images/gucci.jpg',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'Jam 18.00-19.00 sudah full book...',
        time: '10m ago',
        image: 'assets/images/zap.png',
      ),
      Chat(
        name: 'Brand Name',
        lastMessage: 'xxxxxxxxxxxxxxxxxx......',
        time: '12m ago',
        image: 'assets/images/prada.jpg',
      ),
    ];

    return Column(
      children: chatData.map((e) => ChatScreenTemplate(e)).toList(),
    );
  }
}

class Chat {
  final String name, lastMessage, image, time;

  Chat({
    required this.name,
    required this.image,
    required this.lastMessage,
    required this.time,
  });
}