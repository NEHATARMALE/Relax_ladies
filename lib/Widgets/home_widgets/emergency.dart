import 'package:flutter/material.dart';
import 'package:relax_ladies/widgets/home_widgets/emergencies/poilceemergency.dart';

import 'emergencies/AmbulanceEmergency.dart';
import 'emergencies/ArmyEmergency.dart';
import 'emergencies/FirebrigadeEmergency.dart';


class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FirebrigadeEmergency(),
          ArmyEmergency(),

          // Add your valid widget here (e.g., PoliceEmergency())
        ],
      ),
    );
  }
}
