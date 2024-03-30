import 'package:flutter/material.dart';
import 'package:hack/widgets/custom_patient_tile.dart';
import 'package:hack/widgets/profile/custom_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset('assets/images/medical-symbol.png',
          opacity: const AlwaysStoppedAnimation(.5),),
        const Column(
        children: [
            CustomTile(mainText: 'Dr. ABC ', iconType: Icons.person, iconColor: Colors.blue),
            CustomTile(mainText: 'Dr. PQR ', iconType: Icons.person, iconColor: Colors.blue),
            CustomTile(mainText: 'Dr. XYZ ', iconType: Icons.person, iconColor: Colors.blue),
            CustomTile(mainText: 'Dr. UVW ', iconType: Icons.person, iconColor: Colors.blue),
            CustomTile(mainText: 'Dr. IOP ', iconType: Icons.person, iconColor: Colors.blue),
            CustomTile(mainText: 'Dr. YUI ', iconType: Icons.person, iconColor: Colors.blue),
        ],
      ),

      ]
    );
  }
}
