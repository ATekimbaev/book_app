import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/theme/app_colors.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';

class CalendarBody extends StatelessWidget {
  const CalendarBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          DateTime.now().toString(),
          style: AppFonts.s16w400.copyWith(
            color: AppColors.pink,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        const Text(
          'Отдел\nразработок',
          style: AppFonts.s18w400,
        ),
      ],
    );
  }
}
