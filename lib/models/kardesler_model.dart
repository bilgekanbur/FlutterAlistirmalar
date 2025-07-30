// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Empty emptyFromJson(String str) => Empty.fromJson(json.decode(str));

String emptyToJson(Empty data) => json.encode(data.toJson());

class Empty {
    List<Kardesler> kardesler;

    Empty({
        required this.kardesler,
    });

    factory Empty.fromJson(Map<String, dynamic> json) => Empty(
        kardesler: List<Kardesler>.from(json["kardesler"].map((x) => Kardesler.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kardesler": List<dynamic>.from(kardesler.map((x) => x.toJson())),
    };
}

class Kardesler {
    String ad;
    String soyad;
    int yas;
    bool ogrenciMi;
    bool calisanMi;
    String okul;

    Kardesler({
        required this.ad,
        required this.soyad,
        required this.yas,
        required this.ogrenciMi,
        required this.calisanMi,
        required this.okul,
    });

    factory Kardesler.fromJson(Map<String, dynamic> json) => Kardesler(
        ad: json["ad"],
        soyad: json["soyad"],
        yas: json["yas"],
        ogrenciMi: json["ogrenciMi"],
        calisanMi: json["calisanMi"],
        okul: json["okul"],
    );

    Map<String, dynamic> toJson() => {
        "ad": ad,
        "soyad": soyad,
        "yas": yas,
        "ogrenciMi": ogrenciMi,
        "calisanMi": calisanMi,
        "okul": okul,
    };
}
