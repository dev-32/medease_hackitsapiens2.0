import 'package:flutter/material.dart';

import '../constant/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text("About"),
      ),
    );
  }
}
