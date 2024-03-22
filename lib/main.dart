import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: const FirebaseOptions(
    apiKey: "AIzaSyAb5RW9ED5UjMZhN4x8Gmn3YcQX4Mq_7sQ", //  ==   current_key in google-services.json file
    appId: "1:601776580207:android:26f69ef20ee66266b10f9a", // ==  mobilesdk_app_id  in google-services.json file
    messagingSenderId: "601776580207", // ==   project_number in google-services.json file
    projectId: "flutterrole", // ==   project_id   in google-services.json file
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: Register(),
    );
  }
}