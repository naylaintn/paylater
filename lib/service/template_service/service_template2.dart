import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceTemplate2 extends StatefulWidget {
  const ServiceTemplate2({Key? key}) : super(key: key);

  @override
  _ServiceTemplate2State createState() => _ServiceTemplate2State();
}

class _ServiceTemplate2State extends State<ServiceTemplate2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.toNamed("/service_desc");},
      child: Container(
        width: 160,
        height: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(4, 6),
            )],
        ),

        ////////////////////////////////////////////////////////////////

        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),

              //////////////////////////////////////////////////////////////

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Product Name", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const Text("Brand", style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic)),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Starting from", style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic)),
                            Text("Harga", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.solidStar, size: 10, color: kColor2),
                            Text("(5.0)",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
