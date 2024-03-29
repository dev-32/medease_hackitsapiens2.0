import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/constants.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({super.key, required this.mainText, required this.iconType, required this.iconColor});
  final String mainText;
  final IconData iconType;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.containerColor,
      child: ListTile(
        leading: Icon(iconType,
        color: iconColor,),
        title: Text(mainText),
      ),
    ).cornerRadius(10).p8().pSymmetric(h: 5);
  }
}
