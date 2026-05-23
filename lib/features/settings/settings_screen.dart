import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ThemeMode _theme = ThemeMode.system;
  bool _beginner = true;
  bool _showTree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(children: [
        const ListTile(title: Text('Theme')),
        SegmentedButton<ThemeMode>(
          segments: const [ButtonSegment(value: ThemeMode.system, label: Text('System')), ButtonSegment(value: ThemeMode.light, label: Text('Light')), ButtonSegment(value: ThemeMode.dark, label: Text('Dark'))],
          selected: {_theme},
          onSelectionChanged: (v) => setState(() => _theme = v.first),
        ),
        SwitchListTile(title: const Text('Beginner Mode'), value: _beginner, onChanged: (v) => setState(() => _beginner = v)),
        SwitchListTile(title: const Text('Show File Tree'), value: _showTree, onChanged: (v) => setState(() => _showTree = v)),
        const ListTile(title: Text('Command Bar Customization'), subtitle: Text('Placeholder for Alpha')),
        const ListTile(title: Text('Remote environment'), subtitle: Text('Placeholder: SSH / code-server / Codespaces adapters')),
      ]),
    );
  }
}
