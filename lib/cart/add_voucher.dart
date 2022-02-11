import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class AddVoucher extends StatefulWidget {
  const AddVoucher({Key? key}) : super(key: key);

  @override
  _AddVoucherState createState() => _AddVoucherState();
}

class _AddVoucherState extends State<AddVoucher> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          width: _width*0.9,
          height: 50,
          child: Stack(
            children: [
              const TextField(
                style: TextStyle(fontSize: 15),
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
                  hintText: "Add Voucher",
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Container(
                    width: _width*0.3,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: kTextColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                      ),
                    ),
                    child: const Center(
                      child: Text("Enter Voucher", style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: _height*0.02),
        GestureDetector(
          child: Container(
            width: _width*0.5,
            height: 50,
            decoration: BoxDecoration(
              color: kColor1,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Center(
              child: Text("See Available Vouchers", style: TextStyle(fontSize: 15)),
            ),
          ),
        ),
      ],
    );
  }
}
