import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/favorites/favorite_template.dart';

class favoritePage extends StatelessWidget{
  const favoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text("Wishlist", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
      ),
      body: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child:
              ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return favorite_template();
                    }
                    ),
          ),
        ),
    );
  }

}