import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paylater_startup/account/payment_method/paylater/paylater_transactions.dart';
import 'package:paylater_startup/util/colors.dart';

class PayLater_TransactionDesign extends StatelessWidget {

  final TransactionPayLater paylater_transaction;

  PayLater_TransactionDesign(this.paylater_transaction);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: _width,
        height: _height/8,
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 24,
                offset: Offset(0, 10),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/svg/${this.paylater_transaction.logo}.svg',
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontFamily: 'Muli'),
                  children: [
                    TextSpan(
                      text: '${this.paylater_transaction.title}\n',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    TextSpan(
                      text: this.paylater_transaction.description,
                      style: TextStyle(height: 1.5, color: kTextColor, fontSize: 10),
                    )
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  style: TextStyle(fontFamily: 'Muli'),
                  children: [
                    TextSpan(
                      text:
                      '${this.paylater_transaction.value.isNegative ? '-' : '+'}\$${this.paylater_transaction.value}\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: this.paylater_transaction.value.isNegative
                            ? Colors.redAccent
                            : kSecondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: this.paylater_transaction.date,
                      style: TextStyle(height: 1.5, color: kTextColor, fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

