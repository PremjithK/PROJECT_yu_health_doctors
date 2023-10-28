import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(globalContainerBorderRadius),
        color: theme.primary,
      ),
    );
  }
}
