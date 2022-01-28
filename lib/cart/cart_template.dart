import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class cart_template extends StatefulWidget {
  const cart_template({Key? key}) : super(key: key);

  @override
  _cart_templateState createState() => _cart_templateState();
}

class _cart_templateState extends State<cart_template> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        width: _width,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0,4),
              blurRadius: 4,
            ),
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: <Widget> [
              Container(
                width: 100,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  const Text("Product Name", style:  TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  const Text("Brand", style:  TextStyle(fontSize: 10, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 10),
                  const Text("Harga", style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                          color: kColor3.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text("Size: 36", style: TextStyle(color: kTextColor, fontSize: 12)),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 75,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            FaIcon(FontAwesomeIcons.minus, size: 12),
                            SizedBox(width: 15),
                            Text("1", style: TextStyle(color: kTextColor, fontSize: 13, fontWeight: FontWeight.bold)),
                            SizedBox(width: 15),
                            FaIcon(FontAwesomeIcons.plus, size: 12),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset (0,2),
                                blurRadius: 4,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ]
                        ),
                        child: const Center(
                          child: FaIcon(FontAwesomeIcons.trashAlt, size: 12, color: kTextColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
