import 'package:flutter/material.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  String _port = 'localhost:5173';
  String _view = 'Mobile';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Wrap(spacing: 8, children: ['localhost:3000', 'localhost:5173', 'localhost:8000'].map((p) => ChoiceChip(label: Text(p), selected: _port == p, onSelected: (_) => setState(() => _port = p))).toList()),
        const SizedBox(height: 8),
        SegmentedButton<String>(segments: const [ButtonSegment(value: 'Mobile', label: Text('Mobile')), ButtonSegment(value: 'Tablet', label: Text('Tablet')), ButtonSegment(value: 'Desktop', label: Text('Desktop'))], selected: {_view}, onSelectionChanged: (v) => setState(() => _view = v.first)),
        const SizedBox(height: 8),
        ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.refresh), label: const Text('Refresh')),
        Expanded(child: Card(child: Center(child: Text('Mock Preview\n$_port\n$_view viewport')))),
      ]),
    );
  }
}
