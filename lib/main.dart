import 'package:flutter/material.dart';
import 'package:flutter_states/model/item.dart';
import 'package:provider/provider.dart';

import 'provider/flower_non_view.dart';


void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => DarkFlowersModel(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: FlowerNonView());
  }
}
