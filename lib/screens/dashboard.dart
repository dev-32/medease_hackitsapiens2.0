import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/widgets/dashboard/custom_container.dart';
import '../example/patient_list.dart';
import 'custom_patient_list.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  late List patients=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // // fetchAllPatients().then((List list){
    // //   setState(() {
    // //     patients = list;
    // //   });
    // });
  }
  Future<List> fetchAllPatients() async {
    dynamic patientList = [];
    DocumentSnapshot documentSnapshot =
    await FirebaseFirestore.instance.collection('patients').doc(FirebaseAuth.instance.currentUser!.uid).get();
    patientList = documentSnapshot.get('age');
    return patientList;
  }
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
              child: CustomContainer(numCount: ExamplePatientList.patientListTest.length.toString(), textName: 'Active Patients')),
           const CustomContainer(numCount: '0', textName: 'Referred Patients'),
          const CustomContainer(numCount: '2', textName: 'Pending Referred Patients'),
          const CustomContainer(numCount: '2', textName: 'Accepted Patients (Referred)'),
        ],
      ),
    );
  }
}
