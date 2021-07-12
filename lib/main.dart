import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssba_task/Utils/constant_colors.dart';
import 'package:ssba_task/View/CV/resume.dart';
import 'package:ssba_task/View/CityInfo/city_list.dart';
import 'package:ssba_task/View/CityInfo/create_city.dart';
import 'package:ssba_task/View/task_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SSBA Innovation',
      theme: ThemeData(primaryColor: ConstantColors.themeColor),
      home: TaskNavigator(),
      routes: {
        "/CityList": (context) => CityList(),
        "/CreateCity": (context) => CreateCity(),
        "/Resume": (context) => Resume(),
      },
    );
  }
}
