import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String fistText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const ColumnLayout({Key? key, required this.fistText, required this.secondText,
    required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(fistText, style: Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.headLineStyle4),
      ],
    );
  }
}
