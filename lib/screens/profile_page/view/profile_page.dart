import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/ui_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/profile_field.dart';
import 'package:yu_health_doctors/custom_widgets/profile_picture_large.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
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
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: globalInnerScreenPaddingX),
          children: [
            const Center(
              child: ProfilePictureLarge(
                isEditable: true,
                imageURL: '',
                height: 250,
                width: 250,
              ),
            ),

            // Doctor Information
            heightspace(30),

            SizedBox(
              height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileField(
                    title: 'Name',
                    value: 'Dr. Firstname Lastname',
                    textSize: TextSizes.b1,
                    onEdit: () {},
                  ),
                  ProfileField(
                    title: 'Email',
                    value: 'doctorname@gmail.com',
                    onEdit: () {},
                  ),
                  ProfileField(
                    title: 'Phone Number',
                    value: '2342345246',
                    onEdit: () {},
                  ),
                  Expanded(
                    child: ProfileField(
                      title: 'Address',
                      value: 'Doctor Address, Random Steet, Random City',
                      textSize: TextSizes.b2,
                      onEdit: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
