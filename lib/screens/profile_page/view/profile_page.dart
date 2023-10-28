import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: Text(
          'My Profile',
          style: TextStyle(color: theme.onBackground),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),
      backgroundColor: theme.background,
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
