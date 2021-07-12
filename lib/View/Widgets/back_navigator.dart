import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackNavigator extends StatefulWidget {
  @override
  _BackNavigatorState createState() => _BackNavigatorState();
}

class _BackNavigatorState extends State<BackNavigator> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.west,
          color: Colors.black,
        ),
          onPressed: ()=>Get.back(),
);
  }
}
