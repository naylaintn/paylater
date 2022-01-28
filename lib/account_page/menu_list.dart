import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/details/menu_list_item.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            MenuListItem(Icons.arrow_circle_up, "TOP UP"),
            MenuListItem(Icons.article_rounded, "BILLS"),
            MenuListItem(Icons.article_outlined, "TRANSACTION HISTORY"),
            MenuListItem(Icons.credit_card, "CARD"),
            MenuListItem(Icons.person_outline_outlined, "CUSTOMER SERVICE"),
          ],
        )
    );
  }
}
