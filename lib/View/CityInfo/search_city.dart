import 'package:flutter/material.dart';
import 'package:ssba_task/LocalDB/local_db.dart';
import 'package:ssba_task/View/CityInfo/city_list.dart';
import 'package:ssba_task/View/Widgets/error_catcher.dart';
import 'package:ssba_task/View/Widgets/handler.dart';
import 'package:ssba_task/View/Widgets/loading_indicator.dart';

class SearchCity extends SearchDelegate {
  AppDatabase db = AppDatabase();
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }
    return buildFutureBuilder();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return buildFutureBuilder();
  }

  FutureBuilder buildFutureBuilder() {
    return FutureBuilder<List<CityinfoModel>>(
        future: db.searchCities(query),
        builder: (context,AsyncSnapshot<List<CityinfoModel>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Loader();

            default:
              if (snapshot.hasError) return Handler("Unable to search", reload);
              if (snapshot.data!.length == 0)
                return ErrorCatcher("No Data Found");
              else {
                List<CityinfoModel> cityInfoList = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(

                    itemCount: cityInfoList.length,
                    
                    
                    itemBuilder: (context, index) {
                    return CityInfoTile(
                        cityInfo: cityInfoList[index], index: index);
                  }),
                );
              }
          }
        });
  }

  reload() {}
}
