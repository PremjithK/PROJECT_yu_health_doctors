import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class SwitchTile extends StatefulWidget {
  const SwitchTile({
    required this.title,
    required this.onChanged,
    this.value,
    super.key,
  });

  final String title;
  final bool? value;
  final void Function(bool) onChanged;
  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.only(left: 10, right: 2),
      title: MyLabel(
        text: widget.title,
        fontFamily: primaryFont,
        weight: FontWeight.w500,
        size: TextSizes.b1,
      ),
      value: widget.value ?? false,
      onChanged: (newVal) => widget.onChanged(newVal),
    );
  }
}
