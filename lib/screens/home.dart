import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/screens/about.dart';
import 'package:hack/screens/add_patients.dart';
import 'package:hack/screens/contact.dart';
import 'package:hack/screens/dashboard.dart';
import 'package:hack/screens/login_page.dart';
import 'package:hack/screens/profile.dart';
import 'package:hack/screens/setting.dart';
import 'package:hack/screens/support.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    DashBoardScreen(),
    ContactScreen(),
    SupportScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        elevation: 10,
        title: const Text('MedEase',
        style: TextStyle(
          color: Vx.red900,
          letterSpacing: 2
        ),),
        actions: [
          IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const AddPatientScreen()));
          },
              icon: const Icon(Icons.add_circle_outline_sharp))
        ],

      ),
      drawer: Drawer(
        backgroundColor: Constants.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Constants.appBarColor,
              ),
              child: CircleAvatar(
                backgroundColor: Constants.iconColor,
                child: Image.asset('assets/images/doctor.png',
                height: 100,
                width: 100,
                fit: BoxFit.scaleDown,
                ),
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              leading:  Icon(Icons.person,
              color: Constants.iconActiveColor,),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text('Setting'),
              leading:  Icon(Icons.settings,
                  color: Constants.iconActiveColor),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const SettingScreen()));
              },
            ),
            ListTile(
              title: const Text('About'),
              leading:  Icon(Icons.info,
                  color: Constants.iconActiveColor),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const AboutScreen()));
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const  Icon(Icons.logout,
                  color: Colors.red),
              onTap: () async{
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                    const LoginPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.medical_information,
                  text: 'Home',
                  iconColor: Constants.iconColor,
                  iconActiveColor: Constants.iconActiveColor,
                  textColor: Vx.gray800,
                ),
                GButton(
                  icon: Icons.perm_contact_cal,
                  text: 'Contacts',
                  iconColor: Constants.iconColor,
                  iconActiveColor: Constants.iconActiveColor,
                  textColor: Vx.gray800,
                ),
                GButton(
                  icon: Icons.contact_support,
                  text: 'Support',
                  iconColor: Constants.iconColor,
                  iconActiveColor: Constants.iconActiveColor,
                  textColor: Vx.gray800,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
