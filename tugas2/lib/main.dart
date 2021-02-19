import 'package:flutter/material.dart';
import 'dua.dart';
import 'tiga.dart';

void main() {
  runApp(MaterialApp(
      home: new Halsatu(),
      title: "navigasi",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => new Halsatu(),
        '/Haldua': (BuildContext context) => new dua(),
        '/Haltiga': (BuildContext context) => new tiga(),
      }));
}

void title() => Title;

class Halsatu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
                child: Text('Pindah Halaman 1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halsatu()),
                  );
                }),
            RaisedButton(
                child: Text('Pindah Halaman 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dua()),
                  );
                }),
            RaisedButton(
                child: Text('Pindah Halaman 3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tiga()),
                  );
                }),
          ]),
        ));
  }
}

// class dua extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("music"),
//       ),
//       body: new Center(
//         child: new IconButton(
//           icon: new Icon(
//             Icons.music_note,
//             size: 50.0,
//             color: Colors.blue,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, '/Haltiga');
//           },
//         ),
//       ),
//     );
//   }
// }

// class tiga extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("kalender"),
//       ),
//       body: new Center(
//         child: new IconButton(
//           icon: new Icon(
//             Icons.calendar_today,
//             size: 50.0,
//             color: Colors.blue,
//           ),
//           onPressed: null,
//         ),
//       ),
//     );
//   }
// }
