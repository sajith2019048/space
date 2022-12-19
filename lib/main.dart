import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/Pesentation/Pages/Str screen/INTROSCREENS/Login and OTP Verification/API PART/LaunchHome.dart';
import 'Features/Pesentation/Splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // add this, and it should be the first line in main method
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.pacificoTextTheme(),
      ),
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}


