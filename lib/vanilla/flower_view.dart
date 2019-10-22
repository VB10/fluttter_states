import 'package:flutter/material.dart';
import 'package:flutter_states/add_flower.dart';
import 'package:flutter_states/model/item.dart';
import 'package:flutter_states/valuenotifier/item.dart';

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
          model.addFlower(Flower("dark", "daisy"));
        },
      ),
      body: ListView.builder(
        itemCount: model.list.length,
        itemBuilder: (context, index) => Card(
          child: Text(model.list[index].color),
        ),
      ),
    );
  }
}
