import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:velocity_x/velocity_x.dart';
class CustomPatientList extends StatelessWidget {
  const CustomPatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: Text('Patients List'),
      ),
      body: Column(
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
                        Text('ABC ', style: TextStyle(color: Vx.red800),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Age: '),
                        Text('40 ', style: TextStyle(color: Vx.red800),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Blood Group: '),
                        Text('O+ ', style: TextStyle(color: Vx.red800),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Gender: '),
                        Text('M', style: TextStyle(color: Vx.red800),),
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
      ),
    );
  }
}
