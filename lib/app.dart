import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/area_of_rectangle_cubit.dart';
import 'package:class_assignment_2/cubit/dashboard_cubit.dart';
import 'package:class_assignment_2/cubit/simple_intrest_cubit.dart';
import 'package:class_assignment_2/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => RectangleAreaCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<AreaOfCircleCubit>(),
            context.read<SimpleInterestCubit>(),
            context.read<RectangleAreaCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Starter',
        debugShowCheckedModeBanner: false,
        home: DashboardView(),
      ),
    );
  }
}
