import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/screens/avaliable_hosptials.dart';
import 'package:hack/widgets/custom_textfield.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';


class AddPatientScreen extends StatefulWidget {
  const AddPatientScreen({super.key});

  @override
  State<AddPatientScreen> createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
  final TextEditingController pName = TextEditingController();
  final TextEditingController pAge = TextEditingController();
  final TextEditingController pGender = TextEditingController();
  final TextEditingController pBlood = TextEditingController();
  XFile? pickedImageFile;
  final picker = ImagePicker();
  bool imagePicked = false;
  pickedImage() async {
    pickedImageFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80
    );
    print('File is picked');
    if(pickedImageFile != null) {
      setState(() {
        imagePicked = true;
      });

    }
    else{
      setState(() {
        imagePicked = false;
      });
    }
  }
  Future addPatientDetails() async{
  try {
    await FirebaseFirestore.instance.collection('patients').add({
      'patient name' : pName.text.trim(),
      'age' : pAge.text.trim(),
      'gender' : pGender.text.trim(),
      'blood group' : pBlood.text.trim(),
      'document_url': pickedImageFile!.path,
    });
    pName.clear();
    pAge.clear();
    pGender.clear();
    pBlood.clear();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HospitalList()));
  } catch (e){
    print(e);
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('Add Patient To Refer'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          12.heightBox,
           MyTextFiled(hintText: 'Enter Patient Name', obscureText: false,controller: pName,),
           MyTextFiled(hintText: 'Enter Patient Age', obscureText: false,controller: pAge,),
           MyTextFiled(hintText: 'Enter Gender', obscureText: false,controller: pGender,),
           MyTextFiled(hintText: 'Enter Blood Group', obscureText: false,controller: pBlood,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagePicked ?
                  const Text('Documents Uploaded'):const Text('Upload The Documents'),
              5.widthBox,
              imagePicked ? const Icon(Icons.check_circle_outline_rounded,color: Colors.green,) :IconButton(onPressed: () async{
                await pickedImage();
              } ,
                  icon: const Icon( Icons.add))
            ],
          ),
          18.heightBox,
          TextButton(onPressed: ()async{
            await addPatientDetails();
          },
              child: const Text('Submit')),


        ],
      ),
    );
  }
}
