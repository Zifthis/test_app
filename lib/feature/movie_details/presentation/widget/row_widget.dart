import 'package:flutter/material.dart';
import 'package:test_app/feature/movie_details/presentation/widget/text_style.dart';

class RowWidget extends StatelessWidget {
  final String firstInput;
  final String secondInput;
  const RowWidget({
    Key? key,
    required this.firstInput,
    required this.secondInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstInput,
          style: applyStyle(),
        ),
        Text(
          secondInput,
          style: applyStyle(),
        ),
      ],
    );
  }
}
