import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/profile_picture_large.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    required this.name,
    required this.ageAndGender,
    required this.timeStamp,
    required this.caseDescription,
    super.key,
  });
  final String name;
  final String ageAndGender;
  final String caseDescription;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(globalContainerBorderRadius),
        color: theme.surfaceVariant.withOpacity(0.75),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfilePictureLarge(
            isEditable: false,
            imageURL: '',
            height: 100,
            width: 100,
          ),
          widthspace(15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyLabel(
                text: name,
                letterSpacing: -0.1,
                fontFamily: primaryFont,
                weight: FontWeight.w600,
                size: TextSizes.b1,
                height: 1.5,
              ),
              MyLabel(
                text: ageAndGender,
                size: TextSizes.b2,
              ),
              MyLabel(
                text: timeStamp,
                size: TextSizes.b2,
              ),
              heightspace(5),
              MyLabel(
                text: caseDescription,
                letterSpacing: -0.5,
                fontFamily: monospacedFont,
                size: TextSizes.b2,
                maxLines: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
