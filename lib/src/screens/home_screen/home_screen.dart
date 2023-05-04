import 'package:flutter/material.dart';
import 'package:food_sellers_app/src/data/global/global.dart';
import 'package:food_sellers_app/src/screens/authentication/auth_screen.dart';

import '../../widgets/custom_gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CustomGradient(),
        title: Text(
          sharedPreferences!.getString('name')!,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
          ),
          onPressed: () {
            firebaseAuth.signOut().then((value){
              Navigator.push(context, MaterialPageRoute(builder: (c) => const AuthScreen()));
            });
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
