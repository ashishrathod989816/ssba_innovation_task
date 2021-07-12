import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssba_task/Utils/constant_colors.dart';
import 'package:ssba_task/Utils/constant_strings.dart';

class TaskNavigator extends StatelessWidget {
  const TaskNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  Get.toNamed("/Resume");

                },
                child: Container(
                  alignment: Alignment.center,
                  color: ConstantColors.themeColor,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    ConstantStrings.firstTask,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  Get.toNamed("/CityList");
                },
                child: Container(
                  alignment: Alignment.center,
                  color: ConstantColors.themeColor,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    ConstantStrings.secondTask,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
