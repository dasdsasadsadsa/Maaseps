import 'package:flutter/material.dart';

import 'mock_terminal_service.dart';
import 'terminal_drawer.dart';

class TerminalScreen extends StatefulWidget {
  const TerminalScreen({super.key});

  @override
  State<TerminalScreen> createState() => _TerminalScreenState();
}

class _TerminalScreenState extends State<TerminalScreen> {
  final _terminal = MockTerminalService();
  final _controller = TextEditingController();
  final _lines = <String>['Welcome to CodeDuck mock terminal'];
  final _recent = <String>[];

  @override
  Widget build(BuildContext context) {
    return TerminalDrawer(
      child: Column(children: [
        Wrap(spacing: 8, children: ['npm run dev', 'npm install', 'npm test', 'git status', 'clear'].map((c) => FilledButton.tonal(onPressed: () => _run(c), child: Text(c.split(' ').last))).toList()),
        Wrap(spacing: 8, children: _recent.take(5).map((c) => ActionChip(label: Text(c), onPressed: () => _run(c))).toList()),
        Expanded(child: ListView(children: _lines.map((l) => Text(l, style: const TextStyle(color: Colors.greenAccent))).toList())),
        Row(children: [Expanded(child: TextField(controller: _controller, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Enter command'))), IconButton(onPressed: () => _run(_controller.text), icon: const Icon(Icons.send, color: Colors.white))])
      ]),
    );
  }

  void _run(String cmd) {
    if (cmd == 'clear') return setState(() => _lines.clear());
    setState(() {
      _lines.add('\$ $cmd');
      _lines.add(_terminal.run(cmd));
      if (cmd.isNotEmpty) _recent.insert(0, cmd);
      _controller.clear();
    });
  }
}
