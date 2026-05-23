import '../../sample_data/sample_project.dart';
import '../adapters/adapters.dart';
import '../models/project_models.dart';

class LocalSampleProjectSource implements ProjectSource {
  @override
  Future<List<ProjectFile>> loadProjectFiles() async => sampleProjectFiles;
}

class FutureGitHubProjectSource implements ProjectSource {
  @override
  Future<List<ProjectFile>> loadProjectFiles() async => [];
}

class FutureSshProjectSource implements ProjectSource {
  @override
  Future<List<ProjectFile>> loadProjectFiles() async => [];
}
