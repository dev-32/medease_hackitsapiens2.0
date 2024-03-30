import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.numCount, required this.textName});
  final String numCount;
  final String textName;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      color: Constants.containerColor,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(numCount,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Vx.red400,
              ),),
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Vx.red400,
                ),),
            ],
          ),
        ],
      ),
    ).cornerRadius(19).pSymmetric(v: 8, h: 18);
  }
}
