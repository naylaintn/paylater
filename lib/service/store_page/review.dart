import 'package:flutter/material.dart';
import 'package:paylater_startup/service/description_page/review_design.dart';

class TabBarReview extends StatelessWidget {
  const TabBarReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
          ReviewTemplate(),
        ],
      ),
    );
  }
}
