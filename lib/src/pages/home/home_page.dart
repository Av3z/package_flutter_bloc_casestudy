import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_flutter_bloc_casestudy/src/pages/home/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.add(CounterIncremented()),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Bloc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterBloc, int>(builder: (context, counter) {
              return Text("$counter");
            }),
          )
        ],
      ),
    );
  }
}
