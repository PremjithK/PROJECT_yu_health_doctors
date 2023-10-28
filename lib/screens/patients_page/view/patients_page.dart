import 'package:flutter/material.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 20,
        title: Text(
          'My Patients',
          style: TextStyle(color: theme.onBackground),
        ),
      ),
      backgroundColor: theme.background,
      body: const SafeArea(
        child: Column(
          children: [
            //Patients List
            Center(
              child: MyLabel(text: 'You have no patients yet.'),
            )
          ],
        ),
      ),
    );
  }
}
