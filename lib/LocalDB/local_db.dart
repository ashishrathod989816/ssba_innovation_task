import 'package:moor_flutter/moor_flutter.dart';
import 'package:ssba_task/Models/city_data_model.dart';
part 'local_db.g.dart';

@UseMoor(tables: [CityinfoModels])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));
  int get schemaVersion => 1;

//Calculations
  Future<List<CityinfoModel>> getCityList() async {
    return await select(cityinfoModels).get();
  }

//Calculations
  Future<List<CityinfoModel>> searchCities(String query) async {
    return (select(cityinfoModels)..where((cal) => cal.city.contains(query)))
        .get();
  }

  Future insertCity(CityinfoModel cityinfo) async {
    var result = await into(cityinfoModels).insert(cityinfo);
    print(result);
    return result;
    // returnc
  }

  Future deleteCity(CityinfoModel cityInfo) async {
    // await deleteDenominations(calculation.date);
    return delete(cityinfoModels).delete(cityInfo);
  }

  Future updateCity(CityinfoModel cityInfo) async {
    return update(cityinfoModels).replace(cityInfo);
  }

}
