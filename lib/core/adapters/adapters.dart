import '../models/project_models.dart';

abstract class ProjectSource {
  Future<List<ProjectFile>> loadProjectFiles();
}

abstract class RemoteExecutionAdapter {
  Future<String> runCommand(String command);
}

abstract class FileSystemAdapter {
  Future<String?> readFile(String path);
  Future<void> writeFile(String path, String content);
}

abstract class PortPreviewAdapter {
  Future<String> getPreview(String port);
}
