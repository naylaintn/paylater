import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cards_carousel.dart';

class BankCard extends StatelessWidget {

  final CardDetail cardDetail;

  BankCard(this.cardDetail);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(this.cardDetail.background),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.05),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset('assets/svg/visa.svg'),
                  SvgPicture.asset(
                    'assets/svg/more.svg',
                    color: Colors.white,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  this.cardDetail.number,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Muli",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BankCardField(
                    label: 'Card Holder',
                    value: this.cardDetail.name,
                  ),
                  BankCardField(
                    label: 'Expiry',
                    value: this.cardDetail.expiry,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BankCardField extends StatelessWidget {
  final String label;
  final String value;

  BankCardField({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$label \n',
            style: TextStyle(
              fontSize: 9,
              fontFamily: "Muli",
            ),
          ),
          TextSpan(
            text: this.value,
            style: TextStyle(
              fontFamily: "Muli",
              height: 2,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}