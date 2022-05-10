import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:mega_hack/presentation/screens/widgtes/app_button.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';

class BookAllert extends StatefulWidget {
  BookAllert({Key? key}) : super(key: key);

  @override
  State<BookAllert> createState() => _BookAllertState();
}

class _BookAllertState extends State<BookAllert> {
  DateTime dateTime = DateTime.now();
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerDepartment = TextEditingController();
  final DateFormat dateFormat = DateFormat.MMMMd();
  final DateFormat startHourFormat = DateFormat.jm();
  final DateFormat endHourFormat = DateFormat.jm();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: const Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ФИО',
            style: AppFonts.s16w400,
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 48,
            width: 280,
            child: TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Text(
            'Отдел',
            style: AppFonts.s16w400,
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 48,
            width: 280,
            child: TextField(
              controller: controllerDepartment,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              const Text(
                'день',
                style: AppFonts.s16w400,
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    minTime: DateTime(2018, 3, 5),
                    maxTime: DateTime(2023, 6, 7),
                    onConfirm: (date) {
                      setState(() {
                        dateTime = date;
                      });
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 17,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      dateFormat.format(dateTime),
                      style: AppFonts.s12w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'c',
                style: AppFonts.s16w400,
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  DatePicker.showTimePicker(
                    context,
                    onConfirm: (date) {
                      setState(() {
                        startTime = date;
                      });
                    },
                    showTitleActions: true,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 17,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      startHourFormat.format(startTime),
                      style: AppFonts.s12w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  DatePicker.showTimePicker(
                    context,
                    onConfirm: (date) {
                      setState(() {
                        endTime = date;
                      });
                    },
                    showTitleActions: true,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 17,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      endHourFormat.format(endTime),
                      style: AppFonts.s12w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Center(
            child: AppButton(
                func: () {},
                text: const Text(
                  'Потдвердить',
                  style: AppFonts.s18w400,
                ),
                height: 47,
                width: 184),
          ),
        ],
      ),
    );
  }
}
