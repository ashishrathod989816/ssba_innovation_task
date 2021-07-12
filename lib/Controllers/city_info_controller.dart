import 'package:get/get.dart';
import 'package:ssba_task/Api_repository/api_service.dart';
import 'package:ssba_task/LocalDB/local_db.dart';

class CityInfoController extends GetxController {
  bool loader = false;
  List<CityinfoModel> cityList = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loader = true;
    getCityList();
    loader = false;
  }

  getCityList() async {
    try {
      Future.delayed(Duration(seconds: 2));
      cityList = await ApiService.getCities();
      print(cityList);
    } catch (e) {
      cityList = [];
      print(e);
    }
    update();
  }

  insertCityInfo(CityinfoModel cityInfo) async {
    try {
      await ApiService.insertCityInfo(cityInfo);
    } catch (e) {
      print(e);
    }
    update();
    getCityList();
  }

  deleteCityInfo(CityinfoModel cityInfo) async {
    await ApiService.deleteCity(cityInfo);
    getCityList();
  }
}
