import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';

import '../../utilis/textStyles.dart';

Container header() {
  return Container(
    alignment: Alignment.centerLeft,
    constraints: const BoxConstraints(maxHeight: 40, maxWidth: 150),
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(Images.signUpHeader))),
  );
}

Center footer(double height) {
  return Center(
    child: Container(
        height: height * 0.04,
        width: 130,
        margin: const EdgeInsets.only(bottom: 6),
        child: Text(
          'ITGO Admin Panel v5.0© 2022. All rights reserved',
          style: kNormalBlue14TextStyle,
          textAlign: TextAlign.center,
        )),
  );
}

headerImage({required double maxHeight}) {
  return Flexible(
    flex: 4,
    child: Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: const Image(
        image: AssetImage(
          Images.signUpHeader1,
        ),
      ),
    ),
  );
}
