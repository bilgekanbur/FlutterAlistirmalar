import 'package:flutter/material.dart';

class CardListTileKullanimi extends StatefulWidget {
  const CardListTileKullanimi({super.key});

  @override
  State<CardListTileKullanimi> createState() => _CardListTileKullanimiState();
}

class _CardListTileKullanimiState extends State<CardListTileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.green.shade100,
        shadowColor: Colors.orange,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text("bilge sena kanbur", style: TextStyle(fontSize: 20)),
        //   ),
        child: Column(
          children: [
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
            tekSatir(),
          ],
        ),
      ),
    );
  }

  Column tekSatir() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          title: Text("bilge sena kanbur"),
          subtitle: Text("gelişirici"),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
        ),
        Divider(
          thickness: 5,
          color: Colors.purple.shade100,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}

