import 'package:flutter/material.dart';

class DarkFlowersModel extends ChangeNotifier {
  final List<Flower> list = [];

  int get totalFlower => list.length;

  void addFlower(Flower flower) {
    list.add(flower);
    notifyListeners();
  }
}

class Flower {
  final String color;
  final String type;

  Flower(this.color, this.type);
}
