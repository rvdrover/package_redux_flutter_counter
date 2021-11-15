import 'package:package_redux_flutter_counter/redux/counter_action.dart';

int counterReducers(int prevState, dynamic action) {
  if (action is IncrementAction) {
    return prevState + 1;
  } else if (action is DecrementAction) {
    return prevState - 1;
  }
  return prevState;
}
