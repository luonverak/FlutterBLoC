import 'package:demo_bloc/core/provider/app_provider.dart';
import 'package:demo_bloc/core/provider/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injection/injection.dart' as get_it;

void main() {
  runApp(const MyApp());
  get_it.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appPriders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (settings) => AppRoutes.appRouteSetting(settings),
      ),
    );
  }
}
