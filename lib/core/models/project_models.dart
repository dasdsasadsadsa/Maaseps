import 'package:flutter/material.dart';

enum NodeCategory { entryPoint, screens, components, api, data, config, assets, tests, other }

enum ImportanceLevel { high, medium, low }

class ProjectFile {
  final String path;
  final String? contents;
  const ProjectFile({required this.path, this.contents});
}

class ProjectMapNode {
  final String id;
  final String title;
  final NodeCategory category;
  final IconData icon;
  final String description;
  final List<String> relatedFiles;
  final List<String> connectedNodeIds;
  final ImportanceLevel importance;

  const ProjectMapNode({
    required this.id,
    required this.title,
    required this.category,
    required this.icon,
    required this.description,
    required this.relatedFiles,
    required this.connectedNodeIds,
    required this.importance,
  });

  int get fileCount => relatedFiles.length;
}

class ProjectAnalysisResult {
  final List<ProjectMapNode> nodes;
  final List<(String, String)> edges;
  const ProjectAnalysisResult({required this.nodes, required this.edges});
}
