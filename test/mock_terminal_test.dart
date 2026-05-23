import 'package:codeduck/features/terminal/mock_terminal_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('returns known command output', () {
    expect(MockTerminalService().run('npm test'), contains('passed'));
  });

  test('returns fallback output', () {
    expect(MockTerminalService().run('foo'), contains('not available yet'));
  });
}
