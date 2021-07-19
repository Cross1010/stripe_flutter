import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('250.55 USD',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal))
            ],
          ),
          _BtnPay(),
        ],
      ),
    );
  }
}

class _BtnPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return true ? buildButtonCredit(context) : buildAppleAndGoogle(context);
  }

  Widget buildButtonCredit(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: 150,
        shape: StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.creditCard,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Pagar',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Widget buildAppleAndGoogle(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: 150,
        shape: StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: Row(
          children: [
            Icon(
              Platform.isAndroid
                  ? FontAwesomeIcons.google
                  : FontAwesomeIcons.apple,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Pay',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
