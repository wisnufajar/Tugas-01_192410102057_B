import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  List list_nama = [
    "Ahmad Abdul Latief",
    "Bambang Budi Wicaksana",
    "Cinta Agustina Hermawan",
    "Dadang Aji Sugianto",
    "Eko Sucipto Bangun Raharja Budiman",
    "Fahreza Adi Gunawan",
    "Ganung Hadi Bramantyo",
    "Handika Alief Purnama",
    "Ika Kristina Desi",
    "Muhammad Abdul Hanief Darmawan"
  ];
  List email = [
    "AhmadAbdulLtf@gmail.com",
    "Bmbngbudi@gmail.com",
    "Cintaagstn@gmail.com",
    "Dadangaji15@gmail.com",
    "ekoraharja100@gmail.com",
    "fahrezagunawan30@gmail.com",
    "ganunghadi33@gmail.com",
    "handikaaliefp21@gmail.com",
    "ikakrstndesi@gmail.com",
    "mhmmdaabdul39@gmail.com"
  ];
  List nomor_telepon = [
    "0821 3452 8965",
    "0812 4356 8930",
    "0877 8907 4324",
    "0813 2934 9293",
    "0212 3426 7312",
    "0821 7428 4291",
    "0896 3729 1249",
    "0877 2342 1492",
    "0831 4293 2923",
    "0214 2123 0829"
  ];
  List gambar = [
    "gambar/gambarcowo.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcewe.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcowo.png",
    "gambar/gambarcewe.png",
    "gambar/gambarcowo.png"
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              title: Center(child: Text('Daftar Kontak Penting')),
              backgroundColor: Colors.deepOrange,
              toolbarHeight: 80.0,
            ),
            body: ListView(
              children: [
                for (int j = 0; j < list_nama.length; j++)
                  Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Row(
                      children: <Widget>[
                        Image.asset(gambar[j], width: 70.0),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            // width: 200,
                            // height: 120,
                            color: Colors.white30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(list_nama[j],
                                    style: TextStyle(fontSize: 18)),
                                Text(email[j]),
                                Text(nomor_telepon[j]),
                                // Row(
                                // children: [
                                // for (int i = 0; i < 5; i++)
                                // Icon(
                                // Icons.star,
                                // color: Colors.amber,
                                // )
                                // ],
                                // )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            )));
  }
}
