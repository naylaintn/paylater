import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class favorite_template extends StatefulWidget {
  const favorite_template({Key? key}) : super(key: key);

  @override
  _favorite_templateState createState() => _favorite_templateState();
}

class _favorite_templateState extends State<favorite_template> {

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
          color: scaffoldColor,
          border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
          ),
          // borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     offset: Offset(0,4),
          //     blurRadius: 4,
          //   ),
          // ]
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
                        width: 60,
                        height: 35,
                        decoration: BoxDecoration(
                          color: kSecondaryLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: buildDropdownButton(),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 105,
                        height: 35,
                        decoration: BoxDecoration(
                          color: kSecondaryLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FlatButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          color: kSecondaryColor,
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              FaIcon(FontAwesomeIcons.cartPlus, size: 10, color: Colors.white),
                              SizedBox(width: 5),
                              Text("Add to Cart",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: scaffoldColor,
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

  var newValue;
  static const size = [
    "36", "37", "38", "39", "40", "41", "42", "43", "44",
  ];

  Widget buildDropdownButton() {
    return DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<String>(
            menuMaxHeight: 200,
            iconSize: 15,
            hint: Text('Size', style: TextStyle(fontSize: 10)),
            onChanged: (changedValue) {
              newValue = changedValue!;
              setState(() {
                newValue;
                print(newValue);
              });
            },
            value: newValue,
            items: size.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Text(value, style: const TextStyle(fontSize: 11)),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
    );
  }

}
