import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/widgets/dashboard/custom_container.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_patient_list.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
              const CustomPatientList()));
            },
              child: CustomContainer(numCount: '28', textName: 'Active Patients')),
          CustomContainer(numCount: '2', textName: 'Referred Patients'),
          CustomContainer(numCount: '2', textName: 'Pending Referred Patients'),
          CustomContainer(numCount: '2', textName: 'Accepted Patients (Referred)'),
        ],
      ).pOnly(top: 24),
    );
  }
}
