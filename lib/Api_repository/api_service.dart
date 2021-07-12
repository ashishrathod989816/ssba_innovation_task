import 'package:ssba_task/Api_repository/dummy_data.dart';
import 'package:ssba_task/LocalDB/local_db.dart';
import 'package:ssba_task/Models/resume_model.dart';

class ApiService {
  static AppDatabase db = AppDatabase();



//services using dio
// static Future<CityinfoModel> getStates() async {
//     var prefs = await SharedPreferences.getInstance();
//     String? authToken = prefs.getString("authToken");

//     Connection.dio.options.headers = {
//       // "Content-Type": Connection.contentType,
//       "x-authorization": Connection.xAuth,
//       "x-auth-token":authToken
//     };
//     // var data = {"mobileNo": mobile, "regOtpId": otpId, "otp": otp};
//     // FormData formData = FormData.fromMap(data);
//     // print(formData.fields);
//     try {
//       var response = await Connection.dio
//           .get(Connection.endPoint + "profile/fewer_details");
//       print(response.data);

//       return StateModel.fromJson(response.data);
//     } on DioError catch (e) {
//       print(e);
//       if (e.type == DioErrorType.connectTimeout)
//         throw Connection.poorNetwork;
//       else
//         throw Connection.somethingWentWrongError;
//     }
//   }






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
