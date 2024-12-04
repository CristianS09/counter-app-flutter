import 'package:app_flutter/models/counter.dart';
import 'package:app_flutter/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(
        //Diz quais dados foram modificados
        ChangeNotifierProvider(
      //Dado que irá mudar
      create: (context) => Counter(),
      //Quem será avisado quando os dados forem modificados
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text(
            'Counter App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const CounterWidget(),
      ),
    );
  }
}
