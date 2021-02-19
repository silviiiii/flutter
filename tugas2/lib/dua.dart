import 'package:flutter/material.dart';
import 'dua.dart';
import 'tiga.dart';

class dua extends StatelessWidget {
  List<Color> colors = [
    Colors.amberAccent,
    Colors.blue,
    Colors.blueGrey,
    Colors.lightGreen,
    Colors.blueAccent,
    Colors.amber,
  ];
  List colors2 = [
    Colors.brown,
    Colors.grey,
    Colors.lime,
    Colors.blueGrey,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.grey,
    Colors.lime,
  ];
  List<dynamic> name = [
    "nisa",
    "naila",
    "mutiara",
    "eka",
    "santia",
    "aldi",
  ];
  List<dynamic> name1 = [
    "nisa",
    "naila",
    "mutiara",
    "eka",
    "santia",
    "aldi",
  ];
  List<dynamic> name2 = [
    "nisa",
    "naila",
    "mutiara",
    "eka",
    "santia",
    "aldi",
    "erik",
    "Bean",
    "t",
    "pop",
    "mallow",
    " sil",
    " o",
    " y"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman kedua"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: new EdgeInsets.all(5),
                        width: 100,
                        height: 80,
                        color: colors[index],
                        child: Center(
                          child: Text(name1[index]),
                        ),
                      );
                    }),
              ),
              Padding(padding: const EdgeInsets.all(10)),
              Container(
                height: 400,
                width: 400,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        height: 150,
                        color: colors[index],
                        child: Center(
                          child: Text(name[index]),
                        ),
                      );
                    }),
              ),
              //
              Padding(padding: const EdgeInsets.all(2)),
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: new EdgeInsets.all(2),
                        width: 70,
                        height: 80,
                        color: colors[index],
                        child: Center(
                          child: Text(name2[index]),
                        ),
                      );
                    }),
              ),
              // kotak kotak kecil
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors2.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        width: 50,
                        height: 100,
                        color: colors2[index],
                        child: Center(
                          child: Text(name2[index]),
                        ),
                      );
                    }),
              ),
              RaisedButton(
                child: Text('Pindah Halaman 3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tiga()),
                  );
                },
              ),
            ], //tutup membuat container baru
          )),
        ),
      ),
    );
  }
}
