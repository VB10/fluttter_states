import 'package:flutter/material.dart';
import 'package:flutter_states/add_flower.dart';
import 'package:flutter_states/model/item.dart';
import 'package:provider/provider.dart';

class FlowerNonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<DarkFlowersModel>(
          child: Icon(Icons.access_alarm),
          builder: (context, model, child) {
            return FlatButton.icon(
              icon: child,
              label: Text(model.list.length != 0? model.list.last.type : ""),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddFlower()));
              },
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: Provider.of<DarkFlowersModel>(context,listen: true).list.length,
        itemBuilder: (context, index) {
          return Text("Hello");
        },
      ),
    );
  }
}
