import 'package:flutter/material.dart';

class MenuListItem extends StatelessWidget {

  IconData icons;
  String name;

  MenuListItem(this.icons, this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(icons),
          SizedBox(width: 5,),
          Text(name)
        ],
      ),
    );
  }
}
