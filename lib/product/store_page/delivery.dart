import 'package:flutter/material.dart';
import 'package:paylater_startup/product/product_template2.dart';

class store_delivery extends StatelessWidget {
  const store_delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width,
      height: _height,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
       clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 270,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: productTemplate2(_width, _height),
            );
          }
      ),
    );
  }
}
