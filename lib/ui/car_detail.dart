import 'package:flutter/material.dart';
import 'package:rentcar_app/ui/widget/car_carousel.dart';

import '../main.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              child: _carTitle(),
            ),
            Container(
              width: double.infinity,
              child: CarCarousel(),
            )
          ],
        ));
  }

  _carTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 38),
              children: [
                TextSpan(text: currentCar.companyName),
                TextSpan(text: "\n"),
                TextSpan(
                    text: currentCar.carName,
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ]),
        ),
        SizedBox(height: 10),
        RichText(
          text: TextSpan(style: TextStyle(fontSize: 16), children: [
            TextSpan(
                text: currentCar.price.toString(),
                style: TextStyle(color: Colors.grey[20])),
            TextSpan(
              text: " / day",
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ),
      ],
    );
  }
}