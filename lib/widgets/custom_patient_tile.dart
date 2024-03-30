import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constants.dart';
import '../models/patient_model.dart';

class CustomTilePatient extends StatelessWidget {
  const CustomTilePatient({super.key, required this.modelData});
  final PatientModel modelData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          color: Constants.containerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // C1
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: modelData.gender == 'Male' ? 
                        Image.asset('assets/images/man.png'): Image.asset('assets/images/patient.png'),
                  ),
                ],
              ),
              // C2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Name: '),
                      Text(modelData.name, style: TextStyle(color: Vx.red800),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Age: '),
                      Text(modelData.age, style: TextStyle(color: Vx.red800),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Blood Group: '),
                      Text(modelData.bloodGroup, style: TextStyle(color: Vx.red800),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Gender: '),
                      Text(modelData.gender, style: TextStyle(color: Vx.red800),),
                    ],
                  )
                ],
              ),
              // C3
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                  },
                      icon: Icon(Icons.more_horiz,
                        color: Constants.iconColor,))
                ],
              )
            ],
          ),
        ).cornerRadius(12).p12()
      ],
    );
  }
}
