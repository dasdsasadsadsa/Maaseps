import 'package:flutter/material.dart';

class GitScreen extends StatefulWidget {
  const GitScreen({super.key});

  @override
  State<GitScreen> createState() => _GitScreenState();
}

class _GitScreenState extends State<GitScreen> {
  final _message = TextEditingController();
  final _changed = ['lib/main.dart', 'lib/features/project_map/project_map_screen.dart'];
  final _added = ['lib/features/git/git_screen.dart'];
  final _deleted = <String>[];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Changed files'), ..._changed.map(Text.new), const SizedBox(height: 8),
        const Text('Added files'), ..._added.map(Text.new), const SizedBox(height: 8),
        const Text('Deleted files'), ..._deleted.map(Text.new),
        const Divider(),
        const Text('Diff preview placeholder'),
        TextField(controller: _message, decoration: const InputDecoration(labelText: 'Commit message')),
        Wrap(spacing: 8, children: ['Commit', 'Push', 'Pull', 'Create branch'].map((a) => ElevatedButton(onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$a is a mock action'))), child: Text(a))).toList())
      ]),
    );
  }
}
