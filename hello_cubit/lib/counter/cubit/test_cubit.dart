import 'package:bloc/bloc.dart';
export 'package:cubit_counter/counter/cubit/test_cubit.dart';

// TODO extends -> CounterCubit Inherits all the methods and properties from Cubit right ?

// TODO here we create Cubit Class so we can use this to Initialize state right?
// class CounterCubit extends Cubit<int> {
//   // TODO in code below we call Cubit class first ( super == ParentClass right ? )
//   // TODO the value (int) inside super is the initial value ? ( like the starting point value ? )
//   CounterCubit() : super(0);
// }

class MyCubitTestClass extends Cubit<String> {
  MyCubitTestClass() : super('Hello, World!');

  void changeState(String newState) {
    emit(newState);
  }
}
