import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceTemplate extends StatefulWidget {
  const ServiceTemplate({Key? key}) : super(key: key);

  @override
  _ServiceTemplateState createState() => _ServiceTemplateState();
}

class _ServiceTemplateState extends State<ServiceTemplate> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: (){Get.toNamed("/service_desc");},
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 10, 10),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                  height: 150,
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
                      const Text("Service Name", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      const Text("Brand", style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic)),
                      const SizedBox(height: 10),
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
      ),
    );
  }
}
