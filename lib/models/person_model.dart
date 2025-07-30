// To parse this JSON data, do
//
//     final persons = personsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Persons personsFromJson(String str) => Persons.fromJson(json.decode(str));

String personsToJson(Persons data) => json.encode(data.toJson());

class Persons {
  int id;
  String isim;
  bool erkekMi;
  List<String> sevdiiRenkler;
  List<Adres> adres;

  Persons({
    required this.id,
    required this.isim,
    required this.erkekMi,
    required this.sevdiiRenkler,
    required this.adres,
  });

  factory Persons.fromJson(Map<String, dynamic> json) => Persons(
    id: json["id"],
    isim: json["isim"],
    erkekMi: json["erkekMi"],
    sevdiiRenkler: List<String>.from(json["sevdiğiRenkler"].map((x) => x)),
    adres: List<Adres>.from(json["adres"].map((x) => Adres.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "isim": isim,
    "erkekMi": erkekMi,
    "sevdiğiRenkler": List<dynamic>.from(sevdiiRenkler.map((x) => x)),
    "adres": List<dynamic>.from(adres.map((x) => x.toJson())),
  };
}

class Adres {
  String il;
  String ilce;
  String tur;

  @override
  String toString() {
    return "il: $il, ilçe: $ilce";
  }

  Adres({required this.il, required this.ilce, required this.tur});

  factory Adres.fromJson(Map<String, dynamic> json) =>
      Adres(il: json["il"], ilce: json["ilce"], tur: json["tur"]);

  Map<String, dynamic> toJson() => {"il": il, "ilce": ilce, "tur": tur};
}
