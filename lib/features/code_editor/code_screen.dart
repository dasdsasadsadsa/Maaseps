import 'package:flutter/material.dart';

class CodeScreen extends StatefulWidget {
  final String path;
  final String initialContent;
  const CodeScreen({super.key, required this.path, required this.initialContent});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  late final TextEditingController _controller;
  final _tokens = ['Tab', '{ }', '( )', '[ ]', '=>', '"', "'", '/', ';', ':', 'Ctrl', 'Esc', 'Run'];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialContent);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(width: double.infinity, padding: const EdgeInsets.all(8), color: Theme.of(context).colorScheme.surfaceContainerHighest, child: Text(widget.path)),
      Expanded(child: TextField(controller: _controller, maxLines: null, expands: true, decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(12)))),
      SizedBox(
        height: 52,
        child: ListView(scrollDirection: Axis.horizontal, children: _tokens.map((t) => Padding(padding: const EdgeInsets.all(4), child: ActionChip(label: Text(t), onPressed: () => _tapToken(t)))).toList()),
      )
    ]);
  }

  void _tapToken(String token) {
    final inserts = {'Tab': '  ', '{ }': '{}', '( )': '()', '[ ]': '[]'};
    if (['Run', 'Ctrl', 'Esc'].contains(token)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$token is mock-only for Alpha')));
      return;
    }
    _controller.text += inserts[token] ?? token;
  }
}
