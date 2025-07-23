import 'package:flutter/material.dart';

class BeanShelfScreen extends StatelessWidget {
  const BeanShelfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bean Shelf',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          
          // Search Bar
          TextField(
            decoration: InputDecoration(
              hintText: 'Search beans...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Placeholder Bean Cards
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Placeholder count
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xFF8B4513),
                      child: Icon(Icons.coffee, color: Colors.white),
                    ),
                    title: Text('Coffee Bean ${index + 1}'),
                    subtitle: const Text('Origin • Roast Level • Notes'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // TODO: Navigate to bean details
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Bean ${index + 1} selected (placeholder)')),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
