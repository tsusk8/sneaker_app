import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'backup(home).dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'image_picker'),
      home: Home(),
//    home: HomePage(),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('試作段階'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        children: List.generate(11, (index) {
          return _Tile(index);
        }),
        staggeredTiles: List.generate(11, (index) {
          return StaggeredTile.fit(2);
        }),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  _Tile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Image.asset('images/aj''${1 + index}.jpeg'),
      ),
    );
  }
}