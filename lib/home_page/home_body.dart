import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/category.dart';
import 'package:paylater_startup/home_page/promo_information.dart';
import 'package:paylater_startup/home_page/top_brands.dart';
import 'package:paylater_startup/util/colors.dart';
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

            Container(
              width: _width,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 6,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ]
              ),
              child: const TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Search Product / Brand",
                  hintStyle: TextStyle(fontSize: 12),
                  prefixIcon: Icon(Icons.search, color: kTextColor, size: 20),
                ),
              ),
            ),

            SizedBox(height: 30),

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
                Text("SHOP BY BRAND", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                GestureDetector(
                  onTap: (){},
                  child: Text("View All", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),

            SizedBox(height: 20),

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
              height: 270,
              color: Colors.transparent,
              child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("TRENDING NOW", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("View All", style: TextStyle(fontSize: 10)),
              ],
            ),

            Container(
              height: 270,
              color: Colors.transparent,
              child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),

            const SizedBox(height: 30),

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
              height: 270,
              color: Colors.transparent,
              child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productTemplate(_width, _height);
                  }
              ),
            ),
          ],
        ),
      )
    ],
  );
}