import 'package:codeduck/core/storage/session_storage_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('persists last tab', () async {
    SharedPreferences.setMockInitialValues({});
    final s = SessionStorageService();
    await s.saveLastTab(3);
    expect(await s.getLastTab(), 3);
  });
}
