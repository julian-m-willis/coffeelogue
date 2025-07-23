import 'package:flutter/material.dart';

class FlavorTagChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  const FlavorTagChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onSelected(),
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.primary,
      backgroundColor: Colors.grey[100],
      labelStyle: TextStyle(
        color: isSelected 
          ? Theme.of(context).colorScheme.primary
          : Colors.grey[700],
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
      ),
      side: BorderSide(
        color: isSelected 
          ? Theme.of(context).colorScheme.primary
          : Colors.grey[300]!,
        width: 1,
      ),
    );
  }
}
