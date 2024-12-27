import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleCubit extends Cubit<Map<String, double>> {
  AreaOfCircleCubit() : super({"area": 0, "diameter": 0});

  void calculateArea(double radius) {
    if (radius < 0) {
      emit({"area": 0, "diameter": 0});
    } else {
      final area = pi * pow(radius, 2); // π * r²
      final diameter = 2 * radius; // 2 * r
      emit({"area": area, "diameter": diameter});
    }
  }
}
