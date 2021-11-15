import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:package_redux_flutter_counter/redux/counter_reducer.dart';
import 'package:redux/redux.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Store<int>(counterReducers, initialState:0);
    return MaterialApp(
      title: 'Flutter State',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoreProvider<int>(
        store: store,
        child: const MyHomePage(title: 'Flutter Package Redux Counter'),
      ),
    );
  }
}
