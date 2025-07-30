import 'package:flutter/material.dart';
import 'package:flutter_application_6/card_listtile.dart';
import 'package:flutter_application_6/dio_kullanimi.dart';
import 'package:flutter_application_6/gridView_cesitleri.dart';
import 'package:flutter_application_6/json_api_future.dart';
import 'package:flutter_application_6/listTile_alistirma.dart';
import 'package:flutter_application_6/listview_kullanimi.dart';
import 'package:flutter_application_6/smartDialog_kullanimi.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
       navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      home: Scaffold(
        appBar: AppBar(title: Text("Liste Ve Veri İşlemleri")),
        body:ListtileAlistirma(),
      ),
    );
  }
}
