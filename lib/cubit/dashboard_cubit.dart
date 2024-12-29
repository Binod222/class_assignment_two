import 'package:class_assignment_two/bloc/simpleinterest_bloc.dart';
import 'package:class_assignment_two/bloc/student_bloc.dart';
import 'package:class_assignment_two/view/simple_interest_bloc_view.dart';
import 'package:class_assignment_two/view/student_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._simpleinterestBloc,
    this._studentBloc
  ) : super(null);

  final SimpleinterestBloc _simpleinterestBloc;
  final StudentBloc _studentBloc;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleinterestBloc,
          child: SimpleInterestBlocView(),
        ),
      ),
    );
  }
  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleinterestBloc,
          child: SimpleInterestBlocView(),
        ),
      ),
    );
  }
  void openStudentListView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentBlocView(),
        ),
      ),
    );
  }
}
