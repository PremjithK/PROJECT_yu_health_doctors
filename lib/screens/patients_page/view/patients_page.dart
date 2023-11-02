import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/patients_card.dart';
import 'package:yu_health_doctors/screens/view_patients_page/view/patient_details_page.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({
    super.key,
  });

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        titleSpacing: 20,
        title: Text(
          'My Patients',
          style: TextStyle(color: theme.onBackground),
        ),
      ),
      backgroundColor: theme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX),
          //^ Builder needed
          children: [
            PatientCard(
              onTap: () {
                //^ Need to be in bloc
                print('Clicked patient card');
                Get.to<StatefulWidget>(
                  () => const PatientDetailsPage(),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeOut,
                );
              },
              name: 'Dave Smith',
              ageAndGender: '27 MALE',
              timeStamp: '1/1/2023',
              caseDescription: 'Random description...',
            ),
          ],
        ),
      ),
    );
  }
}
