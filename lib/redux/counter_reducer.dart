import 'package:package_redux_flutter_counter/redux/counter_action.dart';

int counterReducers(int prevState, dynamic action) {
  if (action == IncrementAction) {
    return prevState + 1;
  } else if (action == DecrementAction) {
    return prevState - 1;
  }
  return prevState;
}
