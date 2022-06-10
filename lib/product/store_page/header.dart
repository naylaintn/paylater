import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class store_header extends StatefulWidget {
  const store_header({Key? key}) : super(key: key);

  @override
  _store_headerState createState() => _store_headerState();
}

class _store_headerState extends State<store_header> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          width: _width,
          height: 300,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/balenciaga_photoshoot.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ]),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: _height*0.015),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Container(
                      width: _width*0.3,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(const Radius.circular(7)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.message, color: kTextColor, size: 10),
                          SizedBox(width: 5),
                          Text("Send a Message", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: _width*0.01),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: _width*0.3,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(7)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.mapMarkerAlt, color: kTextColor, size: 10),
                          SizedBox(width: 5),
                          Text("Store Location", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: _height*0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ]
                    ),
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.store, size: 20, color: Colors.grey.withOpacity(0.4)),
                    ),
                  ),
                  SizedBox(height: _height*0.01),
                  const Text("BRAND NAME", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              SizedBox(height: _height*0.02),
            ],
          ),
        ),
      ],
    );
  }
}
