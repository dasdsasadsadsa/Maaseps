import 'package:shared_preferences/shared_preferences.dart';

class SessionStorageService {
  static const _lastFile = 'last_file';
  static const _lastNode = 'last_node';
  static const _lastTab = 'last_tab';
  static const _recentCommands = 'recent_commands';

  Future<void> saveLastFile(String path) async {
    final p = await SharedPreferences.getInstance();
    await p.setString(_lastFile, path);
  }

  Future<String?> getLastFile() async => (await SharedPreferences.getInstance()).getString(_lastFile);
  Future<void> saveLastNode(String id) async => (await SharedPreferences.getInstance()).setString(_lastNode, id);
  Future<String?> getLastNode() async => (await SharedPreferences.getInstance()).getString(_lastNode);
  Future<void> saveLastTab(int index) async => (await SharedPreferences.getInstance()).setInt(_lastTab, index);
  Future<int> getLastTab() async => (await SharedPreferences.getInstance()).getInt(_lastTab) ?? 0;
  Future<void> saveRecentCommands(List<String> commands) async => (await SharedPreferences.getInstance()).setStringList(_recentCommands, commands);
  Future<List<String>> getRecentCommands() async => (await SharedPreferences.getInstance()).getStringList(_recentCommands) ?? [];
}
