import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';
import 'package:yu_health_doctors/custom_widgets/spacing.dart';
import 'package:yu_health_doctors/custom_widgets/text.dart';
import 'package:yu_health_doctors/screens/view_patients_page/patient_details_page.dart';

class PrescriptionDetails extends StatefulWidget {
  const PrescriptionDetails({
    required this.prescriptionList,
    super.key,
  });

  final List<Prescription> prescriptionList;

  @override
  State<PrescriptionDetails> createState() => _PrescriptionDetailsState();
}

class _PrescriptionDetailsState extends State<PrescriptionDetails> {
  @override
  Widget build(BuildContext context) {
    // UI
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: (widget.prescriptionList.isEmpty)
          ? const Center(
              child: MyLabel(
                text: 'No prescriptions',
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: widget.prescriptionList.length,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // based on list
                    Flexible(
                      flex: 2,
                      child: MyLabel(
                        text: widget.prescriptionList[index].date,
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
                            text: widget.prescriptionList[index].prescription,
                            size: TextSizes.b1,
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
