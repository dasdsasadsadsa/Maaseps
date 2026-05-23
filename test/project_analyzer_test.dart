import 'package:codeduck/core/models/project_models.dart';
import 'package:codeduck/core/services/project_analyzer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('classifies entry and screens', () {
    final result = ProjectAnalyzer().analyze(const [ProjectFile(path: 'src/main.tsx'), ProjectFile(path: 'src/pages/home.dart')]);
    expect(result.nodes.any((n) => n.category == NodeCategory.entryPoint), isTrue);
    expect(result.nodes.any((n) => n.category == NodeCategory.screens), isTrue);
    expect(result.edges, isNotEmpty);
  });
}
