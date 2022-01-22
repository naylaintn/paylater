import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

//TINGGAL NAVIGATE KE SCREEN LAIN//

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar>
with TickerProviderStateMixin {

  late AnimationController firstIconController;
  late Animation<double> firstIconAngle;
  late Animation<double> firstIconSize;

  late AnimationController secondIconController;
  late Animation<double> secondIconAngle;
  late Animation<double> secondIconSize;

  late AnimationController thirdIconController;
  late Animation<double> thirdIconAngle;
  late Animation<double> thirdIconSize;

  late AnimationController fourthIconController;
  late Animation<double> fourthIconAngle;
  late Animation<double> fourthIconSize;

  late AnimationController fifthIconController;
  late Animation<double> fifthIconAngle;
  late Animation<double> fifthIconSize;

  int currentIndex = 0;

  int beginningIconDuration = 1000;
  int reverseIconDuration = 200;

  double iconAngle = 0;

  double expandedIconSize = 25;
  double normalIconSize = 18;

  Curve forwardingCurve = Curves.elasticOut;
  Curve reversingCurve = Curves.elasticIn;

  List<IconData> listOfIcons = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.solidHeart,
    FontAwesomeIcons.list,
    FontAwesomeIcons.shoppingCart,
    FontAwesomeIcons.solidUser,
  ];

  // List<IconTitle> listOfTitles = [
  //   IconTitle(text: "Home"),
  //   IconTitle(text: "Favorites"),
  //   IconTitle(text: "Pay"),
  //   IconTitle(text: "Cart"),
  //   IconTitle(text: "My Account"),
  // ];

  // page navigation

  int pageIndex = 0;
  // late PageController pageController;
  //
  // void onPageChanged(int page) {
  //   setState(() {
  //     pageIndex = page;
  //   });
  // }
  //
  // void onTabTapped(int index) {
  //   this.pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 1000),
  //       curve: Curves.fastLinearToSlowEaseIn);
  // }

  @override
  void initState(){

    //first

    firstIconController = AnimationController(vsync: this,
        duration: Duration(milliseconds: beginningIconDuration),
        reverseDuration: Duration(milliseconds: reverseIconDuration));
    
    firstIconAngle = Tween<double>(begin: 0, end: iconAngle).animate(
      CurvedAnimation(
          parent: firstIconController,
          curve: forwardingCurve,
          reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    firstIconSize = Tween<double>(begin: normalIconSize, end: expandedIconSize).animate(
      CurvedAnimation(
          parent: firstIconController,
          curve: forwardingCurve,
          reverseCurve: reversingCurve))
    ..addListener(() {
      setState(() {});
    });

    // second

    secondIconController = AnimationController(vsync: this,
        duration: Duration(milliseconds: beginningIconDuration),
        reverseDuration: Duration(milliseconds: reverseIconDuration));

    secondIconAngle = Tween<double>(begin: 0, end: iconAngle).animate(
        CurvedAnimation(
            parent: secondIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    secondIconSize = Tween<double>(begin: normalIconSize, end: expandedIconSize).animate(
        CurvedAnimation(
            parent: secondIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    // third

    thirdIconController = AnimationController(vsync: this,
        duration: Duration(milliseconds: beginningIconDuration),
        reverseDuration: Duration(milliseconds: reverseIconDuration));

    thirdIconAngle = Tween<double>(begin: 0, end: iconAngle).animate(
        CurvedAnimation(
            parent: thirdIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    thirdIconSize = Tween<double>(begin: normalIconSize, end: expandedIconSize).animate(
        CurvedAnimation(
            parent: thirdIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    // fourth

    fourthIconController = AnimationController(vsync: this,
        duration: Duration(milliseconds: beginningIconDuration),
        reverseDuration: Duration(milliseconds: reverseIconDuration));

    fourthIconAngle = Tween<double>(begin: 0, end: iconAngle).animate(
        CurvedAnimation(
            parent: fourthIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    fourthIconSize = Tween<double>(begin: normalIconSize, end: expandedIconSize).animate(
        CurvedAnimation(
            parent: fourthIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    // fifth

    fifthIconController = AnimationController(vsync: this,
        duration: Duration(milliseconds: beginningIconDuration),
        reverseDuration: Duration(milliseconds: reverseIconDuration));

    fifthIconAngle = Tween<double>(begin: 0, end: iconAngle).animate(
        CurvedAnimation(
            parent: fifthIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    fifthIconSize = Tween<double>(begin: normalIconSize, end: expandedIconSize).animate(
        CurvedAnimation(
            parent: fifthIconController,
            curve: forwardingCurve,
            reverseCurve: reversingCurve))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    firstIconController.dispose();
    secondIconController.dispose();
    thirdIconController.dispose();
    fourthIconController.dispose();
    fifthIconController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 45,
          width: _width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: kSecondaryColor.withOpacity(0.2),
                  blurRadius: 10,
                ),
              ]
          ),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                setState(() {
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                });

                // onTabTapped(index);
                if (currentIndex == 0) {
                  firstIconController.forward();
                  secondIconController.reverse();
                  thirdIconController.reverse();
                  fourthIconController.reverse();
                  fifthIconController.reverse();
                }
                else if (currentIndex == 1) {
                  firstIconController.reverse();
                  secondIconController.forward();
                  thirdIconController.reverse();
                  fourthIconController.reverse();
                  fifthIconController.reverse();
                }
                else if (currentIndex == 2) {
                  firstIconController.reverse();
                  secondIconController.reverse();
                  thirdIconController.forward();
                  fourthIconController.reverse();
                  fifthIconController.reverse();
                }
                else if (currentIndex == 3) {
                  firstIconController.reverse();
                  secondIconController.reverse();
                  thirdIconController.reverse();
                  fourthIconController.forward();
                  fifthIconController.reverse();
                }
                else if (currentIndex == 4) {
                  firstIconController.reverse();
                  secondIconController.reverse();
                  thirdIconController.reverse();
                  fourthIconController.reverse();
                  fifthIconController.forward();
                }
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: AnimatedPadding(
                padding: EdgeInsets.symmetric(vertical: index == currentIndex ? 6 : 12),
                duration: const Duration(milliseconds: 0),
                curve: Curves.linearToEaseOut,
                child: Container(
                  width: _width*0.188,
                  alignment: Alignment.topCenter,
                  child: Transform.rotate(
                    angle: index == 0
                        ? firstIconAngle.value
                        : index == 1
                        ? secondIconAngle.value
                        : index == 2
                        ? thirdIconAngle.value
                        : index == 3
                        ? fourthIconAngle.value
                        : index == 4
                        ? fifthIconAngle.value
                        : 0,
                    child:
                    // Column(
                    //   children: [
                    FaIcon(
                      listOfIcons[index],
                      size: index == 0 ? firstIconSize.value
                          : index == 1 ? secondIconSize.value
                          : index == 2 ? thirdIconSize.value
                          : index == 3 ? fourthIconSize.value
                          : index == 4 ? fifthIconSize.value
                          : 0,
                      color: index == currentIndex
                          ? kPrimaryColor
                          : kTextColor,
                    ),
                    // Text(
                    //   listOfTitles[index].text,
                    //   style: TextStyle(
                    //     fontSize: 8,
                    //     color: index == currentIndex
                    //         ? kPrimaryColor
                    //         : kTextColor,
                    //   ),
                    // ),
                    //   ],
                    // ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //   height: 45,
        //   color: Colors.transparent,
        //   alignment: Alignment.topCenter,
        //   child:
        // ),
      ],
    );
  }
}

// class IconTitle {
//   String text;
//
//   IconTitle({
//     this.text= "",
//   });
//
// }
