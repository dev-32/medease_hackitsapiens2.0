import 'package:flutter/material.dart';
import 'package:hack/widgets/profile/custom_tile.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
          Column(
            children: [
              SizedBox(
                height: 400,
                width: 350,
                child: Lottie.asset('assets/animations/animation3.json',
                ),
              ),
            ],
          ),
      const Column(
        children: [
           CustomTile(mainText: 'Call Us',
              iconType: Icons.call, iconColor: Colors.orange),
           CustomTile(mainText: 'Email Us', iconType: Icons.email, iconColor: Vx.red700)
        ],
      )
      ],
    );
  }
}
