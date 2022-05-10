import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.func,
    required this.text,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Function() func;
  final Text text;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: func,
        child: text,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.green),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
