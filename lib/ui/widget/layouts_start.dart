import 'package:flutter/material.dart';
import 'package:rentcar_app/ui/bottomsheet.dart';
import 'package:rentcar_app/ui/widget/rent_btn.dart';

import 'car_detail_animation.dart';

class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarDetailsAnimation(),
        CustomBottomSheet(),
        RentButton(),
      ],
    );
  }
}