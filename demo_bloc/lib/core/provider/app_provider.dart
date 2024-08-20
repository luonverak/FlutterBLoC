import 'package:demo_bloc/presentation/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final appPriders = [
  BlocProvider<CounterBloc>(
    create: (BuildContext context) => CounterBloc(),
  ),
];
