import 'dart:async';

import 'package:demo_bloc/core/data/repository/counter_repo.dart';
import 'package:demo_bloc/core/injection/injection.dart';
import 'package:demo_bloc/presentation/counter/bloc/counter_event.dart';
import 'package:demo_bloc/presentation/counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CounterEventIncrease>(increaseEvent);
    on<CounterEvenDecrease>(descreaseEvent);
  }
  final _repo = locator<CounterRepo>();
  FutureOr<void> increaseEvent(
      CounterEventIncrease event, Emitter<CounterState> emit) {
    _repo.increaseCounter(counter: state.counter).then((value) {
      value.fold((l) => null, (r) {
        emit.call(state.copyWith(counter: r.record));
      });
    });
  }

  FutureOr<void> descreaseEvent(
      CounterEvenDecrease event, Emitter<CounterState> emit) {
    _repo.decreaseCounter(counter: state.counter).then((value) {
      value.fold((l) => null, (r) {
        emit.call(state.copyWith(counter: r.record));
      });
    });
  }
}
