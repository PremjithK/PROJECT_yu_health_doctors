import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';

class PrescriptionDetails extends StatefulWidget {
  const PrescriptionDetails({super.key});

  @override
  State<PrescriptionDetails> createState() => _PrescriptionDetailsState();
}

class _PrescriptionDetailsState extends State<PrescriptionDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            flex: 2,
            child: MyLabel(
              text: '10/09/2023',
              weight: FontWeight.bold,
              textAlign: TextAlign.right,
            ),
          ),
          widthspace(5),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                MyLabel(
                  text:
                      'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nesciunt voluptatum aliquam repellendus natus tempora tenetur earum cum explicabo magni dolorum, asperiores nisi ratione temporibus repellat?',
                  size: TextSizes.b1,
                  maxLines: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
