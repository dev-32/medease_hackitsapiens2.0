import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text("About"),
      ),
      backgroundColor: Constants.backgroundColor,
      body: Column(
        children: [
          Image.asset('assets/images/doctor.png',
          height: 300,width: 200,),
          const Text('MedEase is a medical application whose main purpose is to provide a seamless referral of patients, which is one of the major problem'
              ' patients face. This application helps one the make this process way more easy and comfortable.',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),).text.make().backgroundColor(Vx.yellow50).p12().pOnly(top:  15)
        ],
      ),
    );
  }
}
