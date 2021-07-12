import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssba_task/Controllers/city_info_controller.dart';
import 'package:ssba_task/LocalDB/local_db.dart';
import 'package:ssba_task/Utils/constant_colors.dart';
import 'package:ssba_task/Utils/constant_strings.dart';
import 'package:ssba_task/View/CityInfo/search_city.dart';
import 'package:ssba_task/View/Widgets/back_navigator.dart';
import 'package:ssba_task/View/Widgets/loading_indicator.dart';

class CityList extends StatelessWidget {
  const CityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CityInfoController controller = Get.put(CityInfoController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          ConstantStrings.cityList,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: SearchCity()),
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),

      // body: Center(
      //     child: Text("Hello", style: TextStyle(fontSize: 18),),
      //   ),
      body: GetBuilder<CityInfoController>(builder: (context) {
        print(controller.cityList);

        if (controller.loader)
          return Loader();
        else if (controller.cityList.length == 0)
          return Center(
            child: Text("No City found"),
          );
        return ListView.builder(
            itemCount: controller.cityList.length,
            itemBuilder: (context, index) {
              CityinfoModel cityInfo = controller.cityList[index];
              return CityInfoTile(
                cityInfo: cityInfo,
                index: index,
              );
            });
      }),

      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstantColors.themeColor,
        onPressed: () => Get.toNamed("/CreateCity"),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CityInfoTile extends StatelessWidget {
  const CityInfoTile({Key? key, required this.cityInfo, required this.index})
      : super(key: key);

  final CityinfoModel cityInfo;
  final int index;

  @override
  Widget build(BuildContext context) {
    CityInfoController controller = Get.find();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ConstantColors.themeColor,
                child: Text((index + 1).toString()),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("City Name  : "),
                    Text(
                      cityInfo.city!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("State Name  : "),
                    Text(
                      cityInfo.state!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              trailing: Text(
                cityInfo.country!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            GetBuilder<CityInfoController>(builder: (context) {
              return Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () => controller.deleteCityInfo(cityInfo),
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              );
            }),
            Divider(
              thickness: 2,
            )
          ],
        )
        // child: Container(
        //   width: double.infinity,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [

        //       CircleAvatar(

        //         backgroundColor: ConstantColors.themeColor,

        //         child: Text((index+1).toString()),
        //       ),

        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        // Row(
        //   children: [
        //     Text("City Name  : "),
        //     Text(
        //       cityInfo.city!,
        //       style: TextStyle(
        //           fontSize: 16, fontWeight: FontWeight.bold),
        //     ),
        //   ],
        // ),
        // Row(
        //   children: [
        //     Text("State Name  : "),
        // Text(cityInfo.state!,style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),

        //   ],
        // ),
        // // Row(
        // //   children: [
        // //     Text("Country Name"),

        // //   ],
        // // ),
        //           Divider()
        //         ],
        //       ),

        //       Text(cityInfo.country!, style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),

        //     ],
        //   ),
        // ),

        );
  }
}
