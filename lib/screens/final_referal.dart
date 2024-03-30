import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/screens/home.dart';
import 'package:velocity_x/velocity_x.dart';

class FinalReferral extends StatelessWidget {
  const FinalReferral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        title: Text("Confirm"),
        centerTitle: true,
        backgroundColor: Constants.appBarColor,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VxCapsule(height: 50,width: 100,
                  backgroundColor: Vx.orange200,child:
                  const Center(child:  Text("Bed Status:")),),
                VxCapsule(height: 50,width: 100,
                  backgroundColor: Vx.green200,child:
                  const Center(child:  Text("Available")),)
              ],
            ),
          ).p8().pOnly(left: 16),
          SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VxCapsule(height: 55,width: 100,
                  backgroundColor: Vx.orange200,child:
                  const Center(child:  Text("Insurance:",)),),
                VxCapsule(height: 50,width: 100,
                  backgroundColor: Vx.green200,child:
                  const Center(child:  Text("Accepted")),)
              ],
            ),
          ).p8().pOnly(left: 16),
          100.heightBox,
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Referral Sent Successfully'),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 2),
            ));
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
          }, child: const Text('Send'))
        ],
      ),
    );
  }
}
