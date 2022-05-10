import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  const PaginationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        InkWell(
          child: Icon(Icons.arrow_left),
        ),
        SizedBox(
          width: 18,
        ),
        InkWell(child: Text('1')),
        SizedBox(
          width: 18,
        ),
        InkWell(child: Text('2')),
        SizedBox(
          width: 18,
        ),
        InkWell(child: Text('3')),
        SizedBox(
          width: 18,
        ),
        InkWell(child: Icon(Icons.arrow_right)),
        SizedBox(
          width: 18,
        )
      ],
    );
  }
}
