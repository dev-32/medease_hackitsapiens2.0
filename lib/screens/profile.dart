import 'package:flutter/material.dart';
import 'package:hack/widgets/profile/custom_tile.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constant/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        title: const Text("Profile Screen"),
      ),
      body: Column(
        children: [
          15.heightBox,
              CircleAvatar(
                radius: 46,
                backgroundColor: Constants.backgroundColor,
                child: Image.asset('assets/images/hospital.png',
                fit: BoxFit.fill,),
              ),
          15.heightBox,
          const CustomTile(mainText: 'ABC Hospital',
                  iconType: Icons.local_hospital,
                  iconColor: Colors.red),
          CustomTile(mainText: 'Jaipur, Rajasthan',
              iconType: Icons.location_on_sharp,
              iconColor: Constants.iconColor),
          const CustomTile(mainText: '1234567890', iconType: Icons.mobile_friendly_outlined,
              iconColor: Colors.green),
          const CustomTile(mainText: 'Insurance Accepted',
              iconType: Icons.verified_rounded, iconColor:
              Colors.green),
        Container(
          color: Constants.containerColor,
          child: ListTile(
            leading: Icon(Icons.star,
              color: Constants.iconColor,),
            title: const Text('Specialties'),
            subtitle: const Row(
              children: [
                Text("Cardiology, Orthopedics, Dermatology,\n"
                    "Neurology")
              ],
            ),
          ),
        ).cornerRadius(10).p8().pSymmetric(h: 5)
        ],
      ),
    );
  }
}
