import 'package:demo_bloc/presentation/counter/bloc/counter_bloc.dart';
import 'package:demo_bloc/presentation/counter/bloc/counter_event.dart';
import 'package:demo_bloc/presentation/counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  static const routeName = '/CounterScreen';
  final _bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter BLoC"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          bloc: _bloc,
          builder: (context, state) {
            return Text(
              '${_bloc.state.counter}',
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => _bloc.add(CounterEvenDecrease()),
              icon: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => _bloc.add(CounterEventIncrease()),
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
