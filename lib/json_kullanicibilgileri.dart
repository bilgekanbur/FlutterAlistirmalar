import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_6/models/kardesler_model.dart';

class KullaniciBilgileriniGoster extends StatelessWidget {
  const KullaniciBilgileriniGoster({super.key});

   Future<List<Kardesler>> _loadJson() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      var jsonString = await rootBundle.loadString("assets/data/kardesler.json");
      debugPrint(jsonString);
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      //debugPrint(jsonMap["persons"][1]["adres"][1]["il"].toString() );
      List<dynamic> jsonList = jsonMap["kardesler"];
      List<Kardesler> kisiler = jsonList
          .map((eleman) => Kardesler.fromJson(eleman))
          .toList();

      for (var kisi in kisiler) {
        debugPrint(kisi.ad);
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
    return Scaffold(
      body: FutureBuilder<List<Kardesler>>(
        future: _loadJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var myPersonList = snapshot.data!;
            return ListView.builder(
              itemCount: myPersonList.length,
              itemBuilder: (context, index) {
                var tekPerson = myPersonList[index];
                return ListTile(
                  title: Text(tekPerson.ad),
                  subtitle: Text(tekPerson.yas.toString()),
                  leading: CircleAvatar(child: Text(tekPerson.yas.toString())),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("hata çıktı"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}