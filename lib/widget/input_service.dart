import 'package:flutter/material.dart';
import 'package:easy_actions/easy_actions.dart';

class InputService extends StatelessWidget {
  final int service;
  final Function changeService;
  InputService({super.key, required this.service, required this.changeService});

  final List<String> _label = ['ทั่วไป', 'กปภ(เกาะ)', 'เอกชนร่วมลงทุน'];
  final List<int> _service = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          (service == 0
              ? 'กรุณาเลือกประปาทีใช้บริการ'
              : service == 1
                  ? 'ทั่วไป'
                  : service == 2
                      ? 'กปภ.สาขาภูเก็ต เกาะสมุย และเกาะพงัน'
                      : 'เอกชนร่วมลงทุน'),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonService(_label[0], _service[0], changeService: changeService),
            const SizedBox(
              width: 15,
            ),
            ButtonService(_label[1], _service[1], changeService: changeService),
            const SizedBox(
              width: 15,
            ),
            ButtonService(_label[2], _service[2], changeService: changeService),
          ],
        )
      ],
    );
  }
}

class ButtonService extends StatelessWidget {
  final String label;
  final int service;
  const ButtonService(
    this.label,
    this.service, {
    Key? key,
    required this.changeService,
  }) : super(key: key);

  final Function changeService;

  @override
  Widget build(BuildContext context) {
    return EasyElevatedButton(
      color: const Color.fromARGB(255, 83, 199, 241),
      label: label,
      onPressed: (() => changeService(service)),
    );
  }
}
