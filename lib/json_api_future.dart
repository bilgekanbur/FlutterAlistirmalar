import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_6/models/person_model.dart';

class JsonApiFutureBuilder extends StatelessWidget {
  const JsonApiFutureBuilder({super.key});

  Future<List<Persons>> _loadJson() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      var jsonString = await rootBundle.loadString("assets/data/persons.json");
      debugPrint(jsonString);
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      //debugPrint(jsonMap["persons"][1]["adres"][1]["il"].toString() );
      List<dynamic> jsonList = jsonMap["persons"];
      List<Persons> kisiler = jsonList
          .map((eleman) => Persons.fromJson(eleman))
          .toList();

      for (var kisi in kisiler) {
        debugPrint(kisi.isim);
      }
      return kisiler;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    //_loadJson();
    return FutureBuilder<List<Persons>>(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var myPersonList = snapshot.data!;
          return ListView.builder(
            itemCount: myPersonList.length,
            itemBuilder: (context, index) {
              var tekPerson = myPersonList[index];
              return ListTile(
                title: Text(tekPerson.isim),
                subtitle: Text(tekPerson.adres.toString()),
                leading: CircleAvatar(child: Text(tekPerson.id.toString())),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("hata çıktı"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
