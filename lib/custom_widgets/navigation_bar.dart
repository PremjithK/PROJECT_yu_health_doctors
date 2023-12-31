import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double commonIconSize = 18;

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.backgroundColor = Colors.transparent,
    this.height = 60,
    super.key,
  });

  final int selectedIndex;
  final Color backgroundColor;
  final double height;
  final void Function(int index) onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: NavigationBar(
        animationDuration: const Duration(milliseconds: 500),
        height: height,
        indicatorColor: theme.primary,
        surfaceTintColor: theme.background,
        backgroundColor: backgroundColor,
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
        ),
        destinations: [
          NavigationDestination(
            icon: const Icon(
              FontAwesomeIcons.house,
              size: commonIconSize,
            ),
            selectedIcon: Icon(
              FontAwesomeIcons.house,
              color: theme.onPrimary,
              size: commonIconSize,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: const Icon(
              FontAwesomeIcons.person,
              size: commonIconSize,
            ),
            selectedIcon: Icon(
              FontAwesomeIcons.person,
              color: theme.onPrimary,
              size: commonIconSize,
            ),
            label: 'Patients',
          ),
          NavigationDestination(
            icon: const Icon(
              Icons.person,
              size: commonIconSize + 8,
            ),
            selectedIcon: Icon(
              Icons.person,
              color: theme.onPrimary,
              size: commonIconSize + 8,
            ),
            label: 'Profile',
          ),
        ],

        //Functions
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
