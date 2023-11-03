import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

@riverpod
class S1Notifier extends _$S1Notifier {

  @override
  int build() {
    return 0;
  }

  void updateState() {
    // state変数に現在の状態が格納されている
    final oldState = state;
    final newState = oldState + 1;
    state = newState;
  }
}