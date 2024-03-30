import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

import '../example/patient_list.dart';
import '../models/patient_model.dart';
import '../widgets/custom_patient_tile.dart';
class CustomPatientList extends StatefulWidget {
  const CustomPatientList({super.key});

  @override
  State<CustomPatientList> createState() => _CustomPatientListState();
}

class _CustomPatientListState extends State<CustomPatientList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('Patients List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ExamplePatientList.patientListTest.length,
              itemBuilder: (context, index)=>
               CustomTilePatient(modelData: ExamplePatientList.patientListTest[index],)
            ),
          ],
        ),
      )
    );
  }
}
