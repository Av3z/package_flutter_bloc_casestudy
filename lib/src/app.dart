import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_flutter_bloc_casestudy/src/pages/home/bloc/counter_bloc.dart';
import 'package:package_flutter_bloc_casestudy/src/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(),
          )
        ],
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}
