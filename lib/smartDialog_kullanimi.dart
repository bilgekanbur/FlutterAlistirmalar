import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class SmartdialogKullanimi extends StatelessWidget {
   SmartdialogKullanimi({super.key});

  List <String> Ogrenci=["sena", "sezer", "sinem"];
  // Future<dynamic> _butonaTikla() async {
  //   SmartDialog.showLoading();
  //   await Future.delayed(Duration(seconds: 2));
  //   SmartDialog.dismiss();

  //   SmartDialog.show(
  //     builder: (context) {
  //       return Container(
  //         height: 80,
  //         width: 180,
  //         decoration: BoxDecoration(
  //           color: Colors.black,
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         alignment: Alignment.center,
  //         child: Padding(
  //           padding: const EdgeInsets.all(18.0),
  //           child: Text(
  //             'Tebrikler başarıyla giriş yaptınız',
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Dialog Kullanımı")),
      body: Center(
        // child: ElevatedButton(
        //   onPressed: (_butonaTikla),
        //   child: Text("tıklayınız"),
        // ),

        
      ),
    );
  }
}
