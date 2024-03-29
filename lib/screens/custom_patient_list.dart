import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/patient_model.dart';
import '../widgets/custom_patient_tile.dart';
class CustomPatientList extends StatefulWidget {
  const CustomPatientList({super.key, required this.modelDataList});
  final List<PatientModel> modelDataList;

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
      body: Column(
        children: [
          ListView.builder(
            itemCount: widget.modelDataList.length,
              itemBuilder: (BuildContext context,int index)=>
          return CustomTilePatient(widget.modelDataList[index]));
        ],
      )
    );
  }
}
