import 'package:class_assignment_two/cubit/dashboard_cubit.dart';
import 'package:class_assignment_two/service_locator/service_locator.dart';
import 'package:class_assignment_two/view/dashboard_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardBlocView(),
      ),
    );
  }
}
