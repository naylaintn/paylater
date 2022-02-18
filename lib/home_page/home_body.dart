import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/category.dart';
import 'package:paylater_startup/home_page/promo_information.dart';
import 'package:paylater_startup/home_page/top_brands_product.dart';
import 'package:paylater_startup/home_page/top_brands_service.dart';
import 'package:paylater_startup/service/template_service/service_template.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/product/product_template.dart';
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

            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10,
                ),
                hintText: "Search Product / Brand",
                prefixIcon: Icon(Icons.search, color: kTextColor, size: 20),
              ),
            ),

            SizedBox(height: _height*0.03),

            Text("PROMOS", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            SizedBox(height: _height*0.02),

            promoInfo(),

            SizedBox(height: _height*0.03),

            Text("CATEGORY", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            categoryList(_width, _height),

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("BOOK BY BRAND", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: (){},
                  child: Text("See More", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),

            SizedBox(height: _height*0.03),

            TopBrandsService(_width,_height),

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SHOP BY BRAND", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: (){},
                  child: Text("See More", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),

            SizedBox(height: _height*0.03),

            topBrands(_width, _height),

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("MOST POPULAR PRODUCT", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("View All", style: TextStyle(fontSize: 15)),
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

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("MOST POPULAR SERVICE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("View All", style: TextStyle(fontSize: 15)),
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
                    return ServiceTemplate();
                  }
              ),
            ),

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("TRENDING PRODUCT", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("View All", style: TextStyle(fontSize: 15)),
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

            SizedBox(height: _height*0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TRENDING BEAUTY SERVICE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: (){},
                  child: Text("View All", style: TextStyle(fontSize: 15)),
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
                    return ServiceTemplate();
                  }
              ),
            ),
          ],
        ),
      )
    ],
  );
}