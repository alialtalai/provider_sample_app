import 'package:flutter/material.dart';
import 'package:provider_example_app/Provider/CounterProvider.dart';
import 'package:provider/provider.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  var counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Text('Counter: ${context.watch<CounterProvider>().count}'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: ()=>context.read<CounterProvider>().decrement()),
          const SizedBox(width: 8,),
          FloatingActionButton(
              child: Text('${context.watch<CounterProvider>().count}'),
              onPressed: (){},
          ),
          const SizedBox(width: 8,),
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: ()=>context.read<CounterProvider>().increment()),
        ],
      ),
    );
  }
}
