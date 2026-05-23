import 'package:flutter/material.dart';

import '../core/storage/session_storage_service.dart';
import '../features/code_editor/code_screen.dart';
import '../features/git/git_screen.dart';
import '../features/preview/preview_screen.dart';
import '../features/project_map/project_map_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/terminal/terminal_screen.dart';
import 'theme.dart';

class CodeDuckApp extends StatefulWidget {
  const CodeDuckApp({super.key});

  @override
  State<CodeDuckApp> createState() => _CodeDuckAppState();
}

class _CodeDuckAppState extends State<CodeDuckApp> {
  final _storage = SessionStorageService();
  int _index = 0;
  String _openedPath = 'No file opened';
  String _openedContent = '';

  @override
  void initState() {
    super.initState();
    _storage.getLastTab().then((value) => setState(() => _index = value));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodeDuck',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CodeDuck'),
          actions: [IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())), icon: const Icon(Icons.settings))],
        ),
        body: IndexedStack(index: _index, children: [
          ProjectMapScreen(onOpenFile: _openFile),
          CodeScreen(path: _openedPath, initialContent: _openedContent),
          const TerminalScreen(),
          const PreviewScreen(),
          const GitScreen(),
        ]),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _index,
          onDestinationSelected: (i) {
            setState(() => _index = i);
            _storage.saveLastTab(i);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.hub), label: 'Project Map'),
            NavigationDestination(icon: Icon(Icons.code), label: 'Code'),
            NavigationDestination(icon: Icon(Icons.terminal), label: 'Terminal'),
            NavigationDestination(icon: Icon(Icons.phone_iphone), label: 'Preview'),
            NavigationDestination(icon: Icon(Icons.commit), label: 'Git'),
          ],
        ),
      ),
    );
  }

  void _openFile(String path, String content) {
    setState(() {
      _openedPath = path;
      _openedContent = content;
      _index = 1;
    });
    _storage.saveLastFile(path);
  }
}
