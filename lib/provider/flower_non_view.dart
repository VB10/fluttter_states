import 'package:flutter/material.dart';
import 'package:flutter_states/add_flower.dart';
import 'package:flutter_states/model/custom_theme_data.dart';
import 'package:flutter_states/model/item.dart';
import 'package:flutter_states/shared/custom_theme.dart';
import 'package:provider/provider.dart';

class FlowerNonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      ),
      appBar: AppBar(
        actions: <Widget>[],
        leading: Text(
          "hello",
          style: Theme.of(context).textTheme.body1,
        ),
        title: Consumer<DarkFlowersModel>(
          child: Icon(Icons.access_alarm),
          builder: (context, model, child) {
            return FlatButton.icon(
              icon: child,
              label: Text(model.list.length != 0 ? model.list.last.type : ""),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddFlower()));
              },
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("dark"),
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context)
                    .setThemeData(ThemeData.dark());
              },
            ),
            RaisedButton(
              child: Text("light"),
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context)
                    .setThemeData(ThemeData.light());
              },
            ),
            RaisedButton(
              child: Text("veli"),
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context)
                    .setThemeData(veliThemeData);
              },
            ),
            RaisedButton(
              child: Text("purple"),
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context)
                    .setThemeData(myTheme);
              },
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: Provider.of<DarkFlowersModel>(context, listen: true)
            //         .list
            //         .length,
            //     itemBuilder: (context, index) {
            //       return Text("Hello");
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
