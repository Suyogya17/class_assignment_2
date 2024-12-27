import 'package:flutter_bloc/flutter_bloc.dart';

class RectangleAreaCubit extends Cubit<double> {
  RectangleAreaCubit() : super(0);

  void calculateArea(double length, double breadth) {
    if (length < 0 || breadth < 0) {
      emit(0);
    } else {
      emit(length * breadth);
    }
  }
}
