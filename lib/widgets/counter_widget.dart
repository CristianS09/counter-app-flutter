import 'package:app_flutter/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Recebe os dados modificados do provider
    return Consumer<Counter>(
      builder: (context, value, child) {
        String number = value.counter.toString();
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () => {value.increment()},
                      child: const Text('Add')),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      onPressed: () => {value.decrement()},
                      child: const Text('Remove'))
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
