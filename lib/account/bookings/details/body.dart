import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height*0.5,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.4),
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Booking Number", style: TextStyle(fontSize: 12, color: Colors.grey)),
              Text("018230172392378123", style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Payment Method", style: TextStyle(fontSize: 12)),
              Text("Paylater", style: TextStyle(fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Booking Detail", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: _height*0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Day", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text("Thursday", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Date", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text("22", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Month", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text("Feb", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Year", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text("2022", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: _height*0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Hour", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text("18.00-20.00", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location", style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Wrap(
                        children: [
                          Text("Grand Metropolitan Mall", style: TextStyle(fontSize: 15), textAlign: TextAlign.justify),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(" "),
                      Text(" "),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Expired Date", style: TextStyle(fontSize: 12)),
              Text("22/02/2022", style: TextStyle(fontSize: 12)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: _width*0.5,
                height: _height*0.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/barcode.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
