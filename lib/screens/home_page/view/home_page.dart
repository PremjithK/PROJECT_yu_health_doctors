import 'package:flutter/material.dart';
import 'package:yu_health_doctors/custom_widgets/navigation_bar.dart';
import 'package:yu_health_doctors/screens/dashboard_page/view/dashboard_page.dart';
import 'package:yu_health_doctors/screens/patients_page/view/patients_page.dart';
import 'package:yu_health_doctors/screens/profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedtIndex = 0;

// Switch Between Pages
  void navigate(int index) {

    //Change to bloc
    setState(() {
      _selectedtIndex = index;
    });
  }

  //^ Navigation Bar Destinations
  final List<Widget> _pages = const [
    DashboardPage(),
    PatientsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      body: _pages[_selectedtIndex],
      
      //& NAVIGATION BAR
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.background,
          boxShadow: [
            BoxShadow(
              color: theme.onBackground.withOpacity(0.20),
              blurRadius: 5,
            ),
          ],
        ),
        child: MyNavigationBar(
          selectedIndex: _selectedtIndex,
          onDestinationSelected: navigate,
        ),
      ),
    );
  }
}
