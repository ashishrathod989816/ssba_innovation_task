import 'package:ssba_task/Api_repository/dummy_data.dart';
import 'package:ssba_task/LocalDB/local_db.dart';
import 'package:ssba_task/Models/resume_model.dart';

class ApiService {
  static AppDatabase db = AppDatabase();

  static Future<List<CityinfoModel>> getCities() async {
    try {
      return db.getCityList();
    } catch (e) {
      throw Exception("No data found");
    }
  }

  static Future insertCityInfo(CityinfoModel cityInfo) {
    return db.insertCity(cityInfo);
  }

  static Future searchCity(String cityName) {
    return db.searchCities(cityName);
  }

  static Future deleteCity(CityinfoModel cityInfo) {
    return db.deleteCity(cityInfo);
  }

  static Future<ResumeModel> getResumeInfo() async {
    try {
      Future.delayed(Duration(seconds: 5));
      return ResumeModel.fromJson(DummyData.getDummyData());
    } catch (e) {
      throw Exception("Unable to get data");
    }
  }
}
