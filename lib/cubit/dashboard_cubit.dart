import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/area_of_rectangle_cubit.dart';
import 'package:class_assignment_2/cubit/simple_intrest_cubit.dart';
import 'package:class_assignment_2/view/area_of_circle_view.dart';
import 'package:class_assignment_2/view/area_of_rectangle_cubit_view.dart';
import 'package:class_assignment_2/view/simple_intrest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._areaofcircleCubit,
    this._simpleintrestCubit,
    this._areaofrectangleCubit,
  ) : super(null);

  final AreaOfCircleCubit _areaofcircleCubit;
  final RectangleAreaCubit _areaofrectangleCubit;
  final SimpleInterestCubit _simpleintrestCubit;

  void OpenSimpleIntrest(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleintrestCubit,
          child: SimpleInterestView(),
        ),
      ),
    );
  }

  void OpenAreaOfCircle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofcircleCubit,
          child: CircleAreaCubitView(),
        ),
      ),
    );
  }

  void OpenAreaOfRectangle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofrectangleCubit,
          child: RectangleAreaView(),
        ),
      ),
    );
  }
}
