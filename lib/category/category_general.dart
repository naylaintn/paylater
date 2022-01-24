import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class category_general extends StatefulWidget {
  const category_general({Key? key}) : super(key: key);

  @override
  _category_generalState createState() => _category_generalState();
}

class _category_generalState extends State<category_general> {
  @override
  Widget build(BuildContext context) {

    final myImageAndCaption = [
      ["assets/images/food.jpg", "Food"],
      ["assets/images/interior2.jpg", "Interior"],
      ["assets/images/mobile2.jpg", "Mobile"],
      ["assets/images/mobile.jpg", "Electronic"],
      ["assets/images/plant2.jpg", "Plants"],
      ["assets/images/camera.jpg", "Camera"],
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: _height,
      width: _width,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: GridView.count(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              ...myImageAndCaption.map(
                    (i) => Container(
                  width: _width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        offset: Offset(4,6),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(i.first),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF343434).withOpacity(0.3),
                                  Color(0xFF343434).withOpacity(0.15),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          child: Text.rich(
                            TextSpan(
                              text: i.last,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}