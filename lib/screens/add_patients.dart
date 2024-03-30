import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/widgets/custom_textfield.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';


class AddPatientScreen extends StatefulWidget {
  const AddPatientScreen({super.key});

  @override
  State<AddPatientScreen> createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text('Add Patient To Refer'),
      ),
      body:  Column(
        children: [
          12.heightBox,
          const MyTextFiled(hintText: 'Enter Patient Name', obscureText: false,),
          const MyTextFiled(hintText: 'Enter Patient Age', obscureText: false,),
          const MyTextFiled(hintText: 'Enter Gender', obscureText: false,),
          const MyTextFiled(hintText: 'Enter Blood Group', obscureText: false,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagePicked ?
                  const Text('Documents Uploaded'):const Text('Upload The Documents'),
              5.widthBox,
              imagePicked ? Icon(Icons.check_circle_outline_rounded,color: Colors.green,) :IconButton(onPressed: () async{
                await pickedImage();
              } ,
                  icon: const Icon( Icons.add))
            ],
          )

        ],
      ),
    );
  }
}
