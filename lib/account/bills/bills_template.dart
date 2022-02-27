import 'package:flutter/material.dart';

class BillsTemplate extends StatelessWidget {
  const BillsTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        width: _width,
        height: _height/7,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 24,
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Amount to be paid in December", style: TextStyle(fontSize: 12)),
                  Text("Rp 500.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Payment was successful on 12/12/2021", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.green.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text("Completed", style: TextStyle(fontSize: 12, color: Colors.green)),
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
