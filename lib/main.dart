import 'package:flutter/material.dart';
import 'package:flutter_states/model/custom_theme_data.dart';
import 'package:flutter_states/model/item.dart';
import 'package:flutter_states/shared/custom_theme.dart';
import 'package:provider/provider.dart';

import 'provider/flower_non_view.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => DarkFlowersModel(),
        ),
        ChangeNotifierProvider(
          builder: (context) => CustomThemeDataModal(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<CustomThemeDataModal>(context).getThemeData,
        title: 'Material App',
        home: FlowerNonView());
  }
}
