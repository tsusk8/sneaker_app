import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              prefix: Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              )
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
//        children: List.generate(
//          10,
//              (int i){
//
//            },
//        )
      ),
    );
  }
}

// class __TileState extends State<__Tile>{
//
//}