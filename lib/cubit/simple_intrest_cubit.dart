import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<double> {
  SimpleInterestCubit() : super(0);

  void calculateSimpleInterest(double principal, double rate, double time) {
    if (principal < 0 || rate < 0 || time < 0) {
      emit(0);
    } else {
      final simpleInterest = (principal * rate * time) / 100;
      emit(simpleInterest);
    }
  }
}
