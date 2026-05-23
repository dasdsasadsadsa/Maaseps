import 'package:flutter/material.dart';

import '../models/project_models.dart';

class ProjectAnalyzer {
  static const _groups = {
    NodeCategory.entryPoint: ['main.tsx', 'main.jsx', 'index.tsx', 'index.js', 'app.py', 'main.py', 'App.tsx'],
    NodeCategory.screens: ['pages/', 'screens/', 'routes/', 'app/'],
    NodeCategory.components: ['components/', 'widgets/', 'ui/'],
    NodeCategory.api: ['api/', 'server/', 'backend/', 'controllers/', 'routes/'],
    NodeCategory.data: ['db/', 'database/', 'models/', 'schema/', 'prisma/'],
    NodeCategory.config: ['package.json', 'pubspec.yaml', 'vite.config.', 'tsconfig.json', '.env.example', 'docker-compose.yml'],
    NodeCategory.assets: ['assets/', 'public/', 'images/', 'icons/'],
    NodeCategory.tests: ['test/', 'tests/', '__tests__', 'spec/'],
  };

  ProjectAnalysisResult analyze(List<ProjectFile> files) {
    final byCategory = <NodeCategory, List<String>>{for (final c in NodeCategory.values) c: []};
    for (final file in files) {
      byCategory[_classify(file.path)]!.add(file.path);
    }
    final nodes = <ProjectMapNode>[];
    byCategory.forEach((category, paths) {
      if (paths.isEmpty) return;
      nodes.add(ProjectMapNode(
        id: category.name,
        title: _title(category),
        category: category,
        icon: _icon(category),
        description: '${_title(category)} files grouped for quick mobile understanding.',
        relatedFiles: paths,
        connectedNodeIds: const [],
        importance: category == NodeCategory.entryPoint ? ImportanceLevel.high : ImportanceLevel.medium,
      ));
    });
    final ids = nodes.map((e) => e.id).toList();
    final edges = <(String, String)>[];
    for (var i = 1; i < ids.length; i++) {
      edges.add((ids[0], ids[i]));
    }
    return ProjectAnalysisResult(nodes: nodes, edges: edges);
  }

  NodeCategory _classify(String path) {
    for (final entry in _groups.entries) {
      if (entry.value.any((rule) => path.contains(rule))) return entry.key;
    }
    return NodeCategory.other;
  }

  String _title(NodeCategory c) => switch (c) {
        NodeCategory.entryPoint => 'Entry Point',
        NodeCategory.screens => 'Screens',
        NodeCategory.components => 'Components',
        NodeCategory.api => 'API',
        NodeCategory.data => 'Data',
        NodeCategory.config => 'Config',
        NodeCategory.assets => 'Assets',
        NodeCategory.tests => 'Tests',
        NodeCategory.other => 'Other',
      };

  IconData _icon(NodeCategory c) => switch (c) {
        NodeCategory.entryPoint => Icons.play_circle_fill,
        NodeCategory.screens => Icons.phone_android,
        NodeCategory.components => Icons.extension,
        NodeCategory.api => Icons.cloud,
        NodeCategory.data => Icons.storage,
        NodeCategory.config => Icons.settings,
        NodeCategory.assets => Icons.image,
        NodeCategory.tests => Icons.science,
        NodeCategory.other => Icons.folder,
      };
}
