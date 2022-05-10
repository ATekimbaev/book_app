import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/screens/main_screen/book_alert.dart';
import 'package:mega_hack/presentation/screens/main_screen/description_widget.dart';
import 'package:mega_hack/presentation/screens/main_screen/filter_widget.dart';
import 'package:mega_hack/presentation/screens/main_screen/rooms_images.dart';
import 'package:mega_hack/presentation/screens/widgtes/app_button.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';
import 'package:mega_hack/presentation/screens/main_screen/calendar_widget.dart';

import 'pagination_widget.dart';

class ExpansionBody extends StatelessWidget {
  const ExpansionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 27,
        ),
        AppButton(
            func: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => BookAllert(),
                ),
            text: Text(
              'Забронировать',
              style: AppFonts.s18w400.copyWith(color: Colors.white),
            ),
            height: 47,
            width: 204),
        const SizedBox(
          height: 27,
        ),
        const Text(
          'Описание',
          style: AppFonts.s24w600,
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Зарезервированное время',
          style: AppFonts.s18w600,
        ),
        const SizedBox(
          height: 26,
        ),
        const CalendarBody(),
        const CalendarBody(),
        const CalendarBody(),
        const CalendarBody(),
        const CalendarBody(),
        const SizedBox(
          height: 35,
        ),
        PaginationWidget(),
        const SizedBox(
          height: 35,
        ),
        const DescriiptionWidget(),
        const SizedBox(
          height: 50,
        ),
        const FilterWidget(),
        const SizedBox(
          height: 40,
        ),
        const FilterWidget(),
        const SizedBox(
          height: 40,
        ),
        const FilterWidget(),
        const SizedBox(
          height: 53,
        ),
        const RoomsImages(),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
