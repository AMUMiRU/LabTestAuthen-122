import 'package:authentest_122/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("success"),
      actions: [
        IconButton(onPressed: (){
          FirebaseAuth.instance.signOut();
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage(),
            ));
        }, icon: const Icon(Icons.logout)),
      ],),
      body: SafeArea(child: Text("Successful!")),
    );
  }
}