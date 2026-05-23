class MockTerminalService {
  String run(String command) {
    switch (command.trim()) {
      case 'npm install':
        return 'added 324 packages in 5s';
      case 'npm run dev':
        return 'Vite dev server running at http://localhost:5173';
      case 'npm test':
        return 'All tests passed (12)';
      case 'python main.py':
        return 'Python app started successfully';
      case 'git status':
        return 'On branch main\nChanges not staged for commit: 3 files';
      case 'ls':
        return 'src assets tests package.json';
      case 'pwd':
        return '/workspace/sample-project';
      default:
        return 'Mock terminal: command "$command" is not available yet.';
    }
  }
}
