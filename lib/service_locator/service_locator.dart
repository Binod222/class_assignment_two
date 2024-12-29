import 'package:class_assignment_two/bloc/simpleinterest_bloc.dart';
import 'package:class_assignment_two/bloc/student_bloc.dart';
import 'package:class_assignment_two/cubit/dashboard_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
  _initCubit();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => SimpleinterestBloc());
  serviceLocator.registerLazySingleton(() => StudentBloc());
}

void _initCubit() {
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
