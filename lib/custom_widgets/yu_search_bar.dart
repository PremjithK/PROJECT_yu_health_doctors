import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';

double borderRadius = 15;
double borderWidth = 1;

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    required this.controller,
    required this.onChanged,
    this.hint,
    super.key,
    this.validator,
  });

  final TextEditingController controller;
  final void Function(String) onChanged;
  final String? Function(String? value)? validator;

  final String? hint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.text,

        // Input Text Style
        style: TextStyle(
          fontFamily: secondaryFont,
          fontWeight: FontWeight.w500,
          color: theme.onBackground,
          fontSize: 14,
          letterSpacing: 0,
        ),

        decoration: InputDecoration(
          //Label Style

          hintStyle: TextStyle(
            fontSize: 14,
            color: theme.onBackground.withOpacity(0.3),
            height: 1,
          ),

          filled: true,
          fillColor: theme.background,
          hintText: hint,
          contentPadding: const EdgeInsets.all(10),

          // Enabled Border
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.onBackground.withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),

          // Focused Border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.primary,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),

          // Iconki
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widthspace(15),
              const Icon(
                Icons.search,
                size: 28,
              ),
            ],
          ),
          prefix: widthspace(5),
        ),
      ),
    );
  }
}
