import 'package:flutter/material.dart';

mixin AppSize {
  double devWidth(double percent, BuildContext context) {
    return MediaQuery.of(context).size.width * percent / 100;
  }

  double devHeight(double percent, BuildContext context) {
    return MediaQuery.of(context).size.width * percent / 100;
  }
}
