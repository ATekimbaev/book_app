import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/screens/widgtes/app_button.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';

class FilterAlert extends StatefulWidget {
  const FilterAlert({Key? key}) : super(key: key);

  @override
  State<FilterAlert> createState() => _FilterAlertState();
}

class _FilterAlertState extends State<FilterAlert> {
  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                'Кол-во людей',
                style: AppFonts.s16w400,
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                height: 35,
                width: 55,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          Row(
            children: [
              Checkbox(
                  value: isCheckedOne,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isCheckedOne = value!;
                      },
                    );
                  }),
              const Text(
                'Проектор',
                style: AppFonts.s16w400,
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          Row(
            children: [
              Checkbox(
                value: isCheckedTwo,
                onChanged: (bool? value) {
                  setState(
                    () {
                      isCheckedTwo = value!;
                    },
                  );
                },
              ),
              const Text(
                'Доска маркерная',
                style: AppFonts.s16w400,
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          Row(
            children: [
              Checkbox(
                  value: isCheckedThree,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isCheckedThree = value!;
                      },
                    );
                  }),
              const Text(
                'Кондиционер',
                style: AppFonts.s16w400,
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: AppButton(
              func: () {},
              text: const Text(
                'Применить',
                style: AppFonts.s14w400,
              ),
              height: 36,
              width: 146),
        )
      ],
    );
  }
}
