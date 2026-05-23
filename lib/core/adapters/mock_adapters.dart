import 'adapters.dart';

class MockExecutionAdapter implements RemoteExecutionAdapter {
  @override
  Future<String> runCommand(String command) async => 'Mock execution: $command';
}

class FutureSshExecutionAdapter implements RemoteExecutionAdapter {
  @override
  Future<String> runCommand(String command) async => 'Not implemented yet';
}

class FutureCodespacesAdapter implements RemoteExecutionAdapter {
  @override
  Future<String> runCommand(String command) async => 'Not implemented yet';
}

class FutureCodeServerAdapter implements RemoteExecutionAdapter {
  @override
  Future<String> runCommand(String command) async => 'Not implemented yet';
}

class InMemoryFileSystemAdapter implements FileSystemAdapter {
  final Map<String, String> _storage = {};

  @override
  Future<String?> readFile(String path) async => _storage[path];

  @override
  Future<void> writeFile(String path, String content) async {
    _storage[path] = content;
  }
}

class FutureRemoteFileSystemAdapter implements FileSystemAdapter {
  @override
  Future<String?> readFile(String path) async => null;

  @override
  Future<void> writeFile(String path, String content) async {}
}

class MockPortPreviewAdapter implements PortPreviewAdapter {
  @override
  Future<String> getPreview(String port) async => 'Mock preview for $port';
}

class FutureRemotePortPreviewAdapter implements PortPreviewAdapter {
  @override
  Future<String> getPreview(String port) async => 'Not implemented yet';
}
