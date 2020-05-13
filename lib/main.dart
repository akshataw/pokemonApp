import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        title: Text(
          "Pokemon App",
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        children: List.generate(20, (int i) {
          return _Tile(i);
        }),
        staggeredTiles: List.generate(20, (int index) {
          return StaggeredTile.fit(2);
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.blueAccent,
            ),
            title: Text("Following"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            title: Text("Notifications"),
          ),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  _Tile(this.i);

  final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Image.asset("assets/$i.jpg"),
        )
    );
  }
}


