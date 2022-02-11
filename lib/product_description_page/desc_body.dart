import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

Widget productDesc_body (double _width, double _height) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: _width,
            height: _height*0.4,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(35)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: _width*0.88,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PRODUCT NAME",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              const Text("Nama Brand", style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              )),
              const SizedBox(height: 10),
              const Text("Rp. 5.000.000", style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              )),
              const SizedBox(height: 20),
              const Text("Color",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: _width,
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: kSecondaryColor),
                        ));
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Text("Size",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              SizedBox(
                width: _width,
                height: 25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: kSecondaryColor),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("Description",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              Container(
                height: _height*0.2,
                width: _width*0.88,
                child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                    style: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}