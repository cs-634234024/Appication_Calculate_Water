import 'package:flutter/material.dart';
import 'package:easy_actions/easy_actions.dart';

class InputType extends StatelessWidget {
  final int type;
  final Function changeType;
  InputType({super.key, required this.type, required this.changeType});

  final List<String> _label = ['ที่อยู่อาศัย', 'ราชการธุรกิจ', 'รัฐวิสาหกิจ'];
  final List<int> _type = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          (type == 0
              ? 'กรุณาเลือกประปาทีใช้บริการ'
              : type == 1
                  ? 'ที่อยู่อาศัยและอื่นๆ'
                  : type == 2
                      ? 'ราชการธุรกิจขนาดเล็กและใหญ่ '
                      : 'รัฐวิสาหกิจและธุรกิจขนาดใหญ่'),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonType(_label[0], _type[0], changeType: changeType),
            const SizedBox(
              width: 15,
            ),
            ButtonType(_label[1], _type[1], changeType: changeType),
            const SizedBox(
              width: 15,
            ),
            ButtonType(_label[2], _type[2], changeType: changeType),
          ],
        )
      ],
    );
  }
}

class ButtonType extends StatelessWidget {
  final String label;
  final int type;
  const ButtonType(
    this.label,
    this.type, {
    Key? key,
    required this.changeType,
  }) : super(key: key);

  final Function changeType;

  @override
  Widget build(BuildContext context) {
    return EasyElevatedButton(
      color: const Color.fromARGB(255, 83, 199, 241),
      label: label,
      onPressed: (() => changeType(type)),
    );
  }
}
