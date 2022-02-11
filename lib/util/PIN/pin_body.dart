import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/constants.dart';

class PinBody extends StatefulWidget {
  const PinBody({Key? key}) : super(key: key);

  @override
  _PinBodyState createState() => _PinBodyState();
}

class _PinBodyState extends State<PinBody> {
  List<String> currentPin = ["","","","","",""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  TextEditingController pinFiveController = TextEditingController();
  TextEditingController pinSixController = TextEditingController();

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: _width,
      height: _height*0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Enter your security code", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildPinRow(),
          ),

          buildNumberPad(),
        ],
      ),
    );
  }

  buildNumberPad() {

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardNumber(
                n: 1,
                onPressed: (){
                  pinIndexSetup("1");
                },
              ),
              KeyboardNumber(
                n: 2,
                onPressed: (){
                  pinIndexSetup("2");
                },
              ),
              KeyboardNumber(
                n: 3,
                onPressed: (){
                  pinIndexSetup("3");
                },
              ),
            ],
          ),
          SizedBox(height: _height*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardNumber(
                n: 4,
                onPressed: (){
                  pinIndexSetup("4");
                },
              ),
              KeyboardNumber(
                n: 5,
                onPressed: (){
                  pinIndexSetup("5");
                },
              ),
              KeyboardNumber(
                n: 6,
                onPressed: (){
                  pinIndexSetup("6");
                },
              ),
            ],
          ),
          SizedBox(height: _height*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardNumber(
                n: 7,
                onPressed: (){
                  pinIndexSetup("7");
                },
              ),
              KeyboardNumber(
                n: 8,
                onPressed: (){
                  pinIndexSetup("8");
                },
              ),
              KeyboardNumber(
                n: 9,
                onPressed: (){
                  pinIndexSetup("9");
                },
              ),
            ],
          ),
          SizedBox(height: _height*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: _width*0.2,
              ),
              KeyboardNumber(
                n: 0,
                onPressed: (){
                  pinIndexSetup("0");
                },
              ),
              Container(
                width: _width*0.2,
                height: _width*0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  onPressed: () {
                    clearPin();
                  },
                  child: FaIcon(FontAwesomeIcons.backspace, color: Colors.white,),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  clearPin(){
    if(pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 6){
      setPin(pinIndex, "");
      currentPin[pinIndex-1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex-1] = "";
      pinIndex--;
    }
  }

  pinIndexSetup(String text){
    if(pinIndex == 0)
      pinIndex = 1;
    else if(pinIndex < 6)
      pinIndex++;
    setPin(pinIndex,text);
    currentPin[pinIndex-1] = text;
    String strPin = "";
    currentPin.forEach((e){
      strPin += e;
    });
    if(pinIndex == 6)
      print(strPin);
  }

  setPin(int n, String text){
    switch(n){
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinFiveController.text = text;
        break;
      case 6:
        pinSixController.text = text;
        break;
    }
  }

  buildPinRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PINNumber(
          textEditingController:pinOneController,
        ),
        PINNumber(
          textEditingController:pinTwoController,
        ),
        PINNumber(
          textEditingController:pinThreeController,
        ),
        PINNumber(
          textEditingController:pinFourController,
        ),
        PINNumber(
          textEditingController:pinFiveController,
        ),
        PINNumber(
          textEditingController:pinSixController,
        ),
      ],
    );
  }

}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;

  PINNumber ({required this.textEditingController});

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width*0.13,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: kTextColor,
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;

  KeyboardNumber({required this.n, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width*0.2,
      height: _width*0.2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kSecondaryColor,
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        ),
        height: 90,
        child: Text("$n",
          style: TextStyle(
            fontSize: 40*MediaQuery.of(context).textScaleFactor,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

