import 'package:moor_flutter/moor_flutter.dart';

class CityinfoModels extends Table {
  IntColumn? get id => integer().autoIncrement().nullable()();
  TextColumn? get city => text().nullable(  )();
  TextColumn? get state => text().nullable()();
  TextColumn? get country => text().nullable()();
  TextColumn? get date => text().nullable()();
}
