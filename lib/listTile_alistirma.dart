import 'package:flutter/material.dart';
import 'package:flutter_application_6/json_api_future.dart';
import 'package:flutter_application_6/json_kullanicibilgileri.dart';
import 'package:flutter_application_6/listview_kullanimi.dart';

class ListtileAlistirma extends StatefulWidget {
  const ListtileAlistirma({super.key});

  @override
  State<ListtileAlistirma> createState() => _ListtileAlistirmaState();
}

class _ListtileAlistirmaState extends State<ListtileAlistirma> {
  List<String> _Kardesler = ["sena", "sezer", "sinem"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _Kardesler.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.cyan.shade300,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KullaniciBilgileriniGoster()),
              );
            },
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(_Kardesler[index]),
            trailing: Icon(Icons.arrow_forward),
          ),
        );
      },
    );
  }
}
