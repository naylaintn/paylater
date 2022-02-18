import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceCategory extends StatefulWidget {
  const ServiceCategory({Key? key}) : super(key: key);

  @override
  _ServiceCategoryState createState() => _ServiceCategoryState();
}

class _ServiceCategoryState extends State<ServiceCategory> {
  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      ["assets/images/dermatologist.jpg", "Dermatologist"],
      ["assets/images/dentist.jpg", "Dentist"],
      ["assets/images/estheticiant.jpg", "Esthetician"],
      ["assets/images/spa.jpg", "Spa & Massages"],
      ["assets/images/salon.jpg", "Salon"],
      ["assets/images/barber.jpg", "Barber"],
      ["assets/images/beauty_service.jpg", "Beauty Specialist"],
      ["assets/images/beauty_class.jpg", "Beauty Class"],
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: _height,
      width: _width,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: InkWell(
          onTap: (){Get.toNamed("/service_screen");},
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
                        blurRadius: 2,
                        offset: Offset(0,4),
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
                                  Color(0xFF343434).withOpacity(0.4),
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
      ),
    );
  }
}
