import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

import 'desc_body.dart';

class productDesc_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
          child: SingleChildScrollView(
              child: productDesc_body(_width, _height),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        height: 50,
        color: scaffoldColor,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: _width/2,
                  height: 40,
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35))),
                    color: kPrimaryColor,
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        FaIcon(FontAwesomeIcons.shoppingCart, size: 15, color: Colors.white),
                        SizedBox(width: 10),
                        Text("Buy Now",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
            ),
            Expanded(
                child: SizedBox(
                  width: _width/2,
                  height: 40,
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35))),
                    color: kSecondaryColor.withOpacity(0.4),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        FaIcon(FontAwesomeIcons.solidHeart, size: 15, color: kPrimaryColor),
                        SizedBox(width: 10),
                        Text("Add to Wishlist",
                            style: TextStyle(
                              fontSize: 15,
                              color: kPrimaryColor,
                            )),
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
