import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/screens/final_referal.dart';
import 'package:hack/widgets/profile/custom_tile.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('Available Hospitals'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FinalReferral()));
              },
                child: CustomTile(
                    mainText: 'ABC Hospital',
                    iconType: Icons.medical_information,
                    iconColor: Colors.red)),
            CustomTile(
                mainText: 'XYZ Hospital',
                iconType: Icons.medical_information,
                iconColor: Colors.red),
            CustomTile(
                mainText: 'PQR Hospital',
                iconType: Icons.medical_information,
                iconColor: Colors.red),
            CustomTile(
                mainText: 'AVB Hospital',
                iconType: Icons.medical_information,
                iconColor: Colors.red),
            CustomTile(
                mainText: 'PQR Hospital',
                iconType: Icons.medical_information,
                iconColor: Colors.red),
            CustomTile(
                mainText: 'ZRT Hospital',
                iconType: Icons.medical_information,
                iconColor: Colors.red),
          ],
        ),
      ),
    );
  }
}
