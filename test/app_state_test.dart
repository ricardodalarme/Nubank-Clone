import 'package:flutter_test/flutter_test.dart';
import 'package:nubank_clone/core/app_state.dart';

void main() {
  group('[viewValues]', () {
    test('should be true by default', () {
      final appState = AppState();
      expect(appState.viewValues, true);
    });

    test('should change when switchView is called', () {
      final appState = AppState();
      final initialViewValues = appState.viewValues;
      appState.switchView();
      expect(appState.viewValues, !initialViewValues);
    });
  });
}
