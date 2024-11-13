import 'package:flutter/material.dart';
class Counter with ChangeNotifier {
int_counter;
Counter(this._counter);
getCounter() =>_counter;
setCounter(int counter) => _counter = counter;
void increment() {
  _counter++;
  notifylisterners();
}
void decrement(){
  _counter--;
  notifyListener();
  }
}






