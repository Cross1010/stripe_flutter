import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FullPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pago realizado'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.star,
            color: Colors.white54,
            size: 100,
          ),
          SizedBox(height: 22),
          Text(
            'Pago realizado correctamente',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )
        ],
      )),
    );
  }
}
