// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final String headerdetail;
  final String selectdetail;
  const ShowText(
    this.headerdetail,
    this.selectdetail, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(headerdetail, style: const TextStyle(fontSize: 20)),
        Text(selectdetail),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
