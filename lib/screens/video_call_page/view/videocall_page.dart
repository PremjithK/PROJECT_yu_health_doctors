import 'package:flutter/material.dart';

class VideocallPage extends StatefulWidget {
  const VideocallPage({super.key});

  @override
  State<VideocallPage> createState() => _VideocallPageState();
}

class _VideocallPageState extends State<VideocallPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
