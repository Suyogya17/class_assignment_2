import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleCubit extends Cubit<double> {
  AreaOfCircleCubit() : super(0);

  void calculateArea(double radius) {
    if (radius < 0) {
      emit(0);
    } else {
      final area = pi * pow(radius, 2); // π * r²
      emit(area);
    }
  }
}
