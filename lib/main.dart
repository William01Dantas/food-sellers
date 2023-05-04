import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_sellers_app/src/data/global/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();

  runApp(const MyApp());
}
