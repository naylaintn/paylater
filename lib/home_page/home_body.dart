import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/category.dart';
import 'package:paylater_startup/home_page/promo_information.dart';
import 'package:paylater_startup/home_page/top_brands.dart';
import 'package:paylater_startup/util/product_template.dart';
import 'package:get/get.dart';

Widget HomeBody(double _width, double _height){

  return Wrap(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("PROMOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

            SizedBox(height: 10),

            promoInfo(_width, _height),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CATEGORY", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                GestureDetector(
                  onTap: (){Get.toNamed("/category_screen");},
                  child: const Text("View All", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),

            SizedBox(height: 10),

            categoryList(_width, _height),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TOP BRANDS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                GestureDetector(
                  onTap: (){},
                  child: Text("View All", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),

            SizedBox(height: 10),

            topBrands(_width, _height),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("MOST POPULAR", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("View All", style: TextStyle(fontSize: 10)),
              ],
            ),

            Container(
              height: _height*0.42,
              color: Colors.transparent,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("TRENDING NOW", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("View All", style: TextStyle(fontSize: 10)),
              ],
            ),

            Container(
              height: _height*0.42,
              color: Colors.transparent,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SPECIAL PROMO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                GestureDetector(
                  onTap: (){},
                  child: Text("View All", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),

            Container(
              height: _height*0.42,
              color: Colors.transparent,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      )
    ],
  );
}