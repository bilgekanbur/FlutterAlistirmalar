import 'package:flutter/material.dart';
import 'package:flutter_application_6/tek_satirlik_widget.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ListViewKullanimi extends StatefulWidget {
  ListViewKullanimi({super.key});

  final List<Ogrenci> tumOgrenciler = List.generate(
    100,
    (index) => Ogrenci(
      id: index + 1,
      isim: "ogrenci adı: ${index + 1}",
      erkekMi: index % 2 == 0,
    ),
  );

  @override
  State<ListViewKullanimi> createState() => _ListViewKullanimiState();
}

class _ListViewKullanimiState extends State<ListViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return listViewKullanimi();
  }

  Widget listViewKullanimi() {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.tumOgrenciler.length, // Bunu mutlaka EKLE!
        itemBuilder: (context, index) => GestureDetector(
          onLongPress: () {
            debugPrint(
              "card view tıklanıldı: ${widget.tumOgrenciler[index].isim}",
            );
          },
          child: Card(
            color: widget.tumOgrenciler[index].erkekMi
                ? Colors.blue.shade300
                : Colors.pink.shade300,
            child: ListTile(
              onTap: () {
                SmartDialog.show(
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.tumOgrenciler[index].isim}',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                );
                debugPrint(
                  "list tile tıklanıldı: ${widget.tumOgrenciler[index].isim}",
                );
              }, //selectedColor: (widget.tumOgrenciler[index].erkekMi ? Colors.blue: Colors.pink),
              title: Text(widget.tumOgrenciler[index].isim),
              leading: CircleAvatar(child: Text(index.toString())),
            ),
          ),
        ),
      ),
    );
    //birden fazla elemanım varsa ve taşma sorunum varsa bu
  }

  SingleChildScrollView singleChildScrollView() {
    //tek bir elemanım varsa bu
    return SingleChildScrollView(child: tekSatirlikListTile());
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final bool erkekMi;

  Ogrenci({required this.id, required this.isim, required this.erkekMi});
}
