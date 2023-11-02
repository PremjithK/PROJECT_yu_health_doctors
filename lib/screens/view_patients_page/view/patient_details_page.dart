import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/buttons.dart';
import 'package:yu_health_doctors/custom_widgets/prescriptions_list.dart';
import 'package:yu_health_doctors/custom_widgets/profile_picture_large.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({super.key});

  @override
  State<PatientDetailsPage> createState() => PatientDetailsPageState();
}

class PatientDetailsPageState extends State<PatientDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: Text(
          'Patient Details',
          style: TextStyle(
            color: theme.onBackground,
          ),
        ),
        actions: [
          const MyPrimaryButtonWithIcon(
            icon: Icon(Icons.check),
            label: 'End',
          ),
          widthspace(10),
        ],
      ),
      body: SafeArea(
        // ^ Builder Needed
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX),
          children: [
            heightspace(15),
            const Center(
              child: ProfilePictureLarge(
                isEditable: false,
                imageURL: '',
                height: 160,
                width: 160,
              ),
            ),
            heightspace(25),
            MyHeading(
              text: 'Dave Smith',
              size: TextSizes.h4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyLabel(
                  text: '27 Years, MALE',
                  size: TextSizes.b1,
                ),
                MyLabel(
                  text: 'OFFLINE',
                  size: TextSizes.b1,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyLabel(
                  text: 'Prescription You Gave',
                  size: TextSizes.h6,
                  weight: FontWeight.bold,
                ),
                MyTextButton(
                  label: 'WRITE',
                  onPressed: () {},
                ),
              ],
            ),
            // Date => Prescription
            const PrescriptionDetails(),
          ],
        ),
      ),
    );
  }
}
