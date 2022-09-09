import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/utils/constants.dart';

class PersonalInfosWidget extends StatelessWidget {
  const PersonalInfosWidget({
    super.key,
    required this.label,
    required this.icon,
    this.iconColor,
  });
  final String label;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 34.0,
                right: 4.0,
              ),
              child: IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("PersonalInfosWidget");
                  }
                },
                icon: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  label,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: FontSizeConstants.small,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
