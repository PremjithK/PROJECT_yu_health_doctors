import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/profile_avatar_circle.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';
import 'package:yu_health_doctors/custom_widgets/switch_tile.dart';
// import 'package:yu_health_doctors/custom_widgets/stats_container.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _videoCallSwitch = false;

  @override
  Widget build(BuildContext context) {
    // bool switchVal = false;

    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX),
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightspace(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyHeading(
                      text: 'Dr. LastName',
                      fontFamily: secondaryFont,
                      size: TextSizes.h6,
                      weight: FontWeight.w600,
                    ),
                    MyHeading(
                      text: 'YuHealth.',
                      letterSpacing: -1,
                      color: theme.primary,
                      size: TextSizes.h4,
                    ),
                  ],
                ),
                const ProfilePictureAvatar(),
              ],
            ),
            heightspace(15),
            // Switch
            SwitchTile(
              onChanged: (newVal) {
                setState(() {
                  _videoCallSwitch = newVal;
                });
              },
              title: 'Available for video',
              value: _videoCallSwitch,
            ),
            heightspace(15),
            //& Doctor's Activity/ History
            MyHeading(
              text: 'Recent Activity',
              size: TextSizes.h4,
              letterSpacing: -1,
            ),
            const Divider(),
            const MyLabel(text: 'You have no recent activity.'),
            // Activity history
            heightspace(20),
          ],
        ),
      ),
    );
  }
}
