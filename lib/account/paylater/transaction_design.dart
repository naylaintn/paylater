import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paylater_startup/account/paylater/paylater_transactions.dart';
import 'package:paylater_startup/util/colors.dart';

class PayLater_TransactionDesign extends StatelessWidget {

  final TransactionPayLater paylater_transaction;

  PayLater_TransactionDesign(this.paylater_transaction);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: _width,
        height: _height/8,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 24,
                offset: const Offset(0, 10),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/svg/${paylater_transaction.logo}.svg',
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontFamily: 'Muli'),
                  children: [
                    TextSpan(
                      text: '${paylater_transaction.title}\n',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    TextSpan(
                      text: paylater_transaction.description,
                      style: const TextStyle(height: 1.5, color: kTextColor, fontSize: 10),
                    )
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  style: const TextStyle(fontFamily: 'Muli'),
                  children: [
                    TextSpan(
                      text:
                      '${paylater_transaction.value.isNegative ? '-' : '+'}\$${paylater_transaction.value}\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: paylater_transaction.value.isNegative
                            ? Colors.redAccent
                            : kSecondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: paylater_transaction.date,
                      style: const TextStyle(height: 1.5, color: kTextColor, fontSize: 10),
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

