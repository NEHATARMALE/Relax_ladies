import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        const Text("Profile",
        style: TextStyle(
        color: Colors.white,
        fontFamily: 'Signatra',
        fontSize: 35,
    ),
    ),
    ),
    );
  }
}
