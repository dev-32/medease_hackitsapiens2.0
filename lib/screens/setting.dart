import 'package:flutter/material.dart';

import '../constant/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text("Setting"),
      ),
    );
  }
}
