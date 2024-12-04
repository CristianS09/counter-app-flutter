import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  //Método para incrementar
  void increment() {
    counter++;
    notifyListeners();
  }
  //Método para decrementar
  void decrement() {
    counter--;
    notifyListeners();
  }
}
