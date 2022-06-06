import 'package:flutter/material.dart';

import 'grid1_page.dart';
import 'grid2_page.dart';
import 'home_page.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridPage"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
            title: "Grid 1",
            toPage: Grid1Page(),
          ),
          ItemComponentWidget(
            title: "Grid 2",
            toPage: Grid2Page(),
          ),
        ],
      ),
    );
  }
}
