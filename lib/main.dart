import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:relax_ladies/SplashScreen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC7WsSxv4yOTPJq82417zGmdYBkCktx4zc',
      appId: '1:1046944417410:android:56d706cd74f0ade95ad69b',
      messagingSenderId: '1046944417410',
      projectId: 'com.example.relax_ladies',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relax Ladies',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(),
    );
  }
}
