
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hack/constant/constants.dart';
import 'package:hack/screens/home.dart';

import '../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController  = TextEditingController();

  void signUserIn() async{
    showDialog(context: context, builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print('logged In');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
    } on FirebaseAuthException catch (e){
      Navigator.pop(context);
      showErrorMessage(e.message.toString());
    }
  }
  void showErrorMessage(String message){
    showDialog(context: context, builder: (context){
      return  AlertDialog(
        backgroundColor: Colors.grey[600],
        title: Text(message,
          style: TextStyle(
              color: Colors.white
          ),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 45,),
                Image.asset('assets/images/doctor.png',height: 120,),
                const SizedBox(height: 50,),
                Text('MedEase',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                const SizedBox(height: 25,),
                MyTextFiled(controller: emailController,
                  obscureText: false, hintText: 'Email',),
                const SizedBox(height: 10,),
                MyTextFiled(
                  controller: passwordController, obscureText: true,
                  hintText: 'Password',
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?',
                        style: TextStyle(
                            color: Colors.grey[600]
                        ),),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                ElevatedButton(onPressed: () {
                   signUserIn();
                },
                  child: const Text('Login'),),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.green[600],
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.green[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not Registered?',
                      style: TextStyle(
                          color: Colors.grey[700]
                      ),),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text('Register now',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}