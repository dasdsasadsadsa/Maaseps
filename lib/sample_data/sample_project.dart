import '../core/models/project_models.dart';

const sampleProjectFiles = <ProjectFile>[
  ProjectFile(path: 'src/main.tsx', contents: 'import App from "./App";'),
  ProjectFile(path: 'src/App.tsx', contents: 'export default function App() {}'),
  ProjectFile(path: 'src/pages/home_page.tsx'),
  ProjectFile(path: 'src/screens/settings_screen.tsx'),
  ProjectFile(path: 'src/components/button.tsx'),
  ProjectFile(path: 'src/api/client.ts'),
  ProjectFile(path: 'src/server/routes/user.ts'),
  ProjectFile(path: 'src/database/schema.prisma'),
  ProjectFile(path: 'package.json'),
  ProjectFile(path: 'tsconfig.json'),
  ProjectFile(path: 'assets/logo.png'),
  ProjectFile(path: 'tests/app_test.dart'),
];
