import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardReminder extends StatelessWidget {
  const CardReminder({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(colors: [
                colorScheme.primaryContainer,
                colorScheme.onPrimaryContainer
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            // Icons.add_alert,
                            icon,
                            color: colorScheme.onPrimary,
                            size: 40.0,
                          ),
                          const SizedBox(width: 12.0),
                          Text(
                            label,
                            style: textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      const Text("Tidak ada Pengingat"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withOpacity(0.25),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(8.0))),
        )
      ],
    );
  }
}
