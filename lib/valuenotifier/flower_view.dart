import 'package:flutter/material.dart';
import 'package:flutter_states/add_flower.dart';

import 'item.dart';

class FlowerView extends StatefulWidget {
  @override
  _FlowerViewState createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var model = FlowersModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddFlower()));
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: flowerNotify,
        child: Text("Hello"),
        builder: (context, FlowersModel model, child) {
          return ListView.builder(
            itemCount: model.list.length,
            itemBuilder: (context, index) => Card(
              child: Text(model.list[index].color),
            ),
          );
        },
      ),
    );
  }
}
