import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.offline_bolt),
        SizedBox(
          width: 15,
        ),
        Text(
          'Lorem ipsum dolor sit amet',
          style: AppFonts.s18w400,
        ),
      ],
    );
  }
}
