import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';

class DetailsInfoCard extends StatelessWidget {
  final String title;
  final String value;

  const DetailsInfoCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title:",
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
