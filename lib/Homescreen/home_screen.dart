import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:relax_ladies/widgets/CustomCarouel.dart';
// import 'package:relax_ladies/widgets/custom_appBar.dart';
import 'package:relax_ladies/widgets/home_widgets/emergency.dart';
import 'package:relax_ladies/widgets/home_widgets/safehome/SafeHome.dart';
import 'package:relax_ladies/widgets/live_safe.dart';

import '../Widgets/CustomCarouel.dart';
import '../Widgets/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int qIndex = 0;

  void getRandomQuote() {
    Random random = Random();

    setState(() {
      qIndex = random.nextInt(6);
    });
  }

  @override
  void initState() {
    getRandomQuote();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(
                quoteIndex: qIndex,
                onTap: getRandomQuote, // Pass the function reference without invoking it
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomCarouel(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Emergency",
                        style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Emergency(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Explore LiveSafe",
                        style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    LiveSafe(),
                    SafeHome(),



                  ],
                ),)

              // Other widgets in your column...
            ],
          ),
        ),
      ),
    );
  }
}
