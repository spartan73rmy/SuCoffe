import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'listViewExample.dart';

// //Define "root widget"
// void main() => runApp(new MyApp()); //one-line function

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     //build function returns a "Widget"
// //     final materialApp = new MaterialApp(
// //       title: 'SuCoffe',
// //       home: new ListViewExample(),
// //     );

// //     return materialApp;
// //   }
// // }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       theme: new ThemeData(
//           primarySwatch: Colors.pink,
//           primaryColor: defaultTargetPlatform == TargetPlatform.android
//               ? Colors.grey[100]
//               : null),
//       home: new  (
//         title: 'SuCoffe',
//         home: new ListViewExample(),
//       ),
//     );
//   }
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuCoffe',
      theme: ThemeData(       
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Sensores'),      
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: new ListViewExampleState().build(context),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.archive),
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );
}
}