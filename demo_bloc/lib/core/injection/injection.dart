import 'package:demo_bloc/core/data/repository/counter_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton<CounterRepo>(() => CounterRepo());
}
