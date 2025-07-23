import 'package:flutter/material.dart';
import '../widgets/voice_recorder.dart';
import '../widgets/flavor_tag_chip.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  final List<String> _selectedFlavors = [];

  void _onFlavorSelected(String flavor) {
    setState(() {
      if (_selectedFlavors.contains(flavor)) {
        _selectedFlavors.remove(flavor);
      } else {
        _selectedFlavors.add(flavor);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Coffee Entry',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          
          // Voice Recorder Section
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Voice Log',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  VoiceRecorder(),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Flavor Tags Section
          const Text(
            'Flavor Tags',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              'Fruity', 'Nutty', 'Chocolatey', 'Floral', 'Citrus',
              'Spicy', 'Sweet', 'Bitter', 'Sour', 'Earthy'
            ].map((flavor) => FlavorTagChip(
              label: flavor,
              isSelected: _selectedFlavors.contains(flavor),
              onSelected: () => _onFlavorSelected(flavor),
            )).toList(),
          ),
          
          const Spacer(),
          
          // Save Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Save entry logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Entry saved! (placeholder)')),
                );
              },
              child: const Text('Save Entry'),
            ),
          ),
        ],
      ),
    );
  }
}
