import 'package:flutter/material.dart';

class ProfilePictureAvatar extends StatefulWidget {
  const ProfilePictureAvatar({
    this.onTap,
    this.imageURL,
    super.key,
  });

  final String? imageURL;
  final void Function()? onTap;

  @override
  State<ProfilePictureAvatar> createState() => _ProfilePictureAvatarState();
}

class _ProfilePictureAvatarState extends State<ProfilePictureAvatar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: CircleAvatar(
          backgroundColor: theme.primary,
          minRadius: 22,
          child: Icon(
            Icons.person,
            color: theme.onPrimary,
          ),
        ),
      ),
    );
  }
}
