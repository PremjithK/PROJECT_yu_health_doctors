import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class SwitchTile extends StatefulWidget {
  const SwitchTile({
    required this.title,
    this.value,
    super.key,
  });

  final String title;
  final bool? value;

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      title: MyLabel(
        text: widget.title,
        fontFamily: primaryFont,
        weight: FontWeight.w500,
        size: TextSizes.b1,
      ),
      value: widget.value ?? false,
      onChanged: (value) {},
    );
  }
}
