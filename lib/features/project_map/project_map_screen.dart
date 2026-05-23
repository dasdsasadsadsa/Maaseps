import 'package:flutter/material.dart';

import '../../core/services/project_analyzer.dart';
import '../../core/services/project_source_impl.dart';

class ProjectMapScreen extends StatefulWidget {
  final void Function(String path, String content) onOpenFile;
  const ProjectMapScreen({super.key, required this.onOpenFile});

  @override
  State<ProjectMapScreen> createState() => _ProjectMapScreenState();
}

class _ProjectMapScreenState extends State<ProjectMapScreen> {
  final _source = LocalSampleProjectSource();
  final _analyzer = ProjectAnalyzer();
  bool _showTree = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _source.loadProjectFiles(),
      builder: (context, snapshot) {
        final files = snapshot.data ?? [];
        final result = _analyzer.analyze(files);
        return Column(children: [
          SwitchListTile(title: const Text('Show File Tree (Fallback)'), value: _showTree, onChanged: (v) => setState(() => _showTree = v)),
          Expanded(
            child: _showTree
                ? ListView(children: files.map((f) => ListTile(title: Text(f.path), onTap: () => widget.onOpenFile(f.path, f.contents ?? '// empty'))).toList())
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: result.nodes
                            .map((n) => SizedBox(
                                  width: 180,
                                  child: Card(
                                    child: InkWell(
                                      onTap: () => _showNode(n),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(n.icon), Text(n.title), Text('${n.fileCount} files')]),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
          )
        ]);
      },
    );
  }

  void _showNode(dynamic node) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(node.title, style: Theme.of(context).textTheme.titleLarge),
          Text(node.description),
          const SizedBox(height: 8),
          ...node.relatedFiles.map<Widget>((f) => Text(f)),
          const SizedBox(height: 8),
          Row(children: [
            ElevatedButton(onPressed: () => widget.onOpenFile(node.relatedFiles.first, '// opened from map'), child: const Text('Open first related file')),
            const SizedBox(width: 8),
            OutlinedButton(onPressed: () {}, child: const Text('Show files in this node')),
          ])
        ]),
      ),
    );
  }
}
