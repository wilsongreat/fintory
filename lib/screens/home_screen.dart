import 'package:fintory_app/widgets/fin_activity.dart';
import 'package:fintory_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          const Flexible(
            flex: 2,
            child: SideMenu(),
          ),
          const Flexible(flex: 3, child: ActivityList()),
          Flexible(
            flex: 5,
            child: FinDetails(
              finDetails: fins,
            ),
          )
        ],
      ),
    );
  }
}
