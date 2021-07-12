import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssba_task/Controllers/city_info_controller.dart';
import 'package:ssba_task/LocalDB/local_db.dart';
import 'package:ssba_task/Utils/constant_colors.dart';
import 'package:ssba_task/Utils/constant_strings.dart';
import 'package:ssba_task/View/Widgets/back_navigator.dart';

class CreateCity extends StatelessWidget {
  CreateCity({Key? key}) : super(key: key);

  final TextEditingController city = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController country = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    CityInfoController controller = Get.put(CityInfoController());

   final FocusScopeNode node = FocusScope.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          ConstantStrings.createCity,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("City Name"),
                TextFormField(
                  controller: city,
                  onFieldSubmitted: (str) {
                    node.nextFocus();
                  },
                  validator: (str) {
                    if (str == null) return "City should not be null";
                    if (str.length == 0) return "City should not be null";
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text("State Name"),
                TextFormField(
                  controller: state,
                  onFieldSubmitted: (str){
                    node.nextFocus();

                  },
                  validator: (str) {
                    if (str == null) return "State should not be null";
                    if (str.length == 0)
                      return "State should not be null";
                    else
                      return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Country Name"),
                TextFormField(
                  controller: country,
                  onFieldSubmitted: (str){

                    node.nextFocus();

                  },
                  validator: (str) {
                    if (str == null) return "Country should not be null";
                    if (str.length == 0) return "Country should not be null";
                    return null;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () async {
                    final isValid = _formKey.currentState!.validate();
                    if (!isValid) {
                      return;
                    }
                    _formKey.currentState!.save();

                    // cityInfo.copyWith;

                    await controller
                        .insertCityInfo(CityinfoModel(
                            id: null,
                            city: city.text,
                            state: state.text,
                            country: country.text,
                            date: DateTime.now().toString()))
                        .then((result) {
                      city.clear();
                      state.clear();
                      country.clear();

                      Get.back();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ConstantColors.themeColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
