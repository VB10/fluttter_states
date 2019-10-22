import 'package:flutter/material.dart';
import 'package:flutter_states/model/item.dart';
import 'package:provider/provider.dart';

class AddFlower extends StatefulWidget {
  @override
  _AddFlowerState createState() => _AddFlowerState();
}

class _AddFlowerState extends State<AddFlower> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          // MARK : Value add
          // flowerNotify.addFlower();

          // VANILLA ADD
          Provider.of<DarkFlowersModel>(context,listen: false)
              .addFlower(Flower("dark", "daisy"));
        },
      ),
    );
  }
}
