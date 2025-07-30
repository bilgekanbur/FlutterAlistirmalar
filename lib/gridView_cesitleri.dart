import 'package:flutter/material.dart';
import 'package:flutter_application_6/listview_kullanimi.dart';

class GridviewCesitleri extends StatelessWidget {
  GridviewCesitleri({super.key});

  List<Ogrenci> ogrenciler = List.generate(200, (index) {
    return Ogrenci(
      id: (index + 1),
      isim: "Ogrenci ${index + 1}",
      erkekMi: index % 2 == 0,
    );
  });
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        childAspectRatio: MediaQuery.of(context).size.width > 600 ? 3 : 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.orange[100 * (index % 9)],
          child: Text(ogrenciler[index].isim.toString()),
        );
      },
    );
  }

  GridView GridViewExtent() {
    return GridView.extent(
      primary: true,
      maxCrossAxisExtent: 150,
      reverse: false,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      children: createContainer(10),
      scrollDirection: Axis.vertical,
    );
  }

  GridView GridViewCount() {
    return GridView.count(
      primary: true,
      crossAxisCount: 4,
      reverse: false,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      children: createContainer(3),
      scrollDirection: Axis.horizontal,
    );
  }
}

List<Widget> createContainer(int length) {
  return List.generate(length, (index) {
    var renkShade = ((index + 1) % 10) * 100;
    var sonShade = renkShade == 0 ? 100 : renkShade;
    return Container(
      alignment: Alignment.center,
      color: Colors.purple[sonShade],
      child: Text(
        "container $sonShade",
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  });
}
