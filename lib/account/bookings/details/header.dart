import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height/6,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.4),
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Purchase Date", style: TextStyle(fontSize: 12, color: Colors.grey)),
              Text("22/02/2022", style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          Wrap(
            children: [
             Container(
               width: _width,
               alignment: Alignment.topCenter,
               child:  const Text("Avinda Beauty Salon, Spa, & Massage",
                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
               ),
             ),
            ],
          ),
          const Text("Rp xxxxxxx", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
