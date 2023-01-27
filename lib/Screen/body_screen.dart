import 'package:application_textfield_1/Screen/result_screen.dart';
import 'package:application_textfield_1/calculate.dart';
import 'package:application_textfield_1/widget/input_service.dart';
import 'package:application_textfield_1/widget/input_type.dart';
import 'package:application_textfield_1/widget/show_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyScreen extends StatefulWidget {
  final String title;
  const BodyScreen({super.key, required this.title});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  TextEditingController size = TextEditingController();
  TextEditingController water = TextEditingController();

  int service = 0;
  int type = 0;

  void nextPage() {}

  void changeService(int newservice) {
    setState(() {
      service = newservice;
    });
  }

  void changeType(int newtype) {
    setState(() {
      type = newtype;
    });
  }

  final List<String> _headderdetail = [
    'ประปาที่ใช้บริการ',
    'ประเภทผู้ใช้',
    'ขนาดมาตรวัดนํ้า',
    'ปริมาณการใช้น้ำ',
  ];
  final List<String> _selectdetail = [
    '1.ทั่วไป   2.กปภ.สาขาภูเก็ต  3.เอกชนร่วมลงทุน',
    '1.ที่อยู่อาศัย   2.ราชการธุรกิจ   3.รัฐวิสาหกิจ',
    '1.ขนาด 0.5\n2.ขนาด 0.75\n3.ขนาด 1\n4.ขนาด 1.5\n5.ขนาด 2\n6.นาด 2.5 \n7.ขนาด 3\n8.ขนาด 4\n9.ขนาด 6\n',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
              children: const [
                FaIcon(FontAwesomeIcons.calculator),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'โปรแกรมคำนวณค่าน้ำประปา',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.arrowRight))
            ]),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  margin: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ShowText(_headderdetail[0], _selectdetail[0]),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: InputService(
                              service: service, changeService: changeService),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  margin: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ShowText(_headderdetail[1], _selectdetail[1]),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: InputType(type: type, changeType: changeType),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child:
                                ShowText(_headderdetail[2], _selectdetail[2]),
                          ),
                          const Text(
                            'กรุณาป้อนขนาดวันน้ำ (เลข 1-9)',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Form(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                controller: size,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: ' ป้อนขนาดวัดน้ำของคุณ ',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child:
                                ShowText(_headderdetail[3], _selectdetail[3]),
                          ),
                          const Text(
                            'กรุณาป้อนปริมาณการใช้น้ำ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              controller: water,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: ' ป้อนปริมาณการใช้น้ำของคุณ ',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ButtonCalculate(
                  service: service,
                  type: type,
                  size: size,
                  water: water,
                )
              ],
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class ButtonCalculate extends StatelessWidget {
  final int service;
  final int type;
  final TextEditingController size;
  final TextEditingController water;
  ButtonCalculate({
    Key? key,
    required this.size,
    required this.water,
    required this.service,
    required this.type,
  }) : super(key: key);

  int newsize = 0;
  int newwater = 0;
  dynamic result = 0;
  double anssize = 0;
  List<double> number = [];
  List<double> price = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        newsize = int.parse(size.text);
        newwater = int.parse(water.text);
        if (service == 1 && type == 1) {
          price = [
            10.2,
            16.0,
            19.0,
            21.20,
            21.60,
            21.65,
            21.7,
            21.75,
            21.8,
            21.85,
            21.90,
          ];

          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 1 && type == 2) {
          price = [
            16.0,
            19.0,
            20.0,
            21.50,
            21.60,
            21.65,
            21.7,
            21.75,
            21.8,
            21.85,
            21.90
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 1 && type == 3) {
          price = [
            18.0,
            21.0,
            24.0,
            27.0,
            29.0,
            29.25,
            29.50,
            29.75,
            29.5,
            29.25,
            29.00
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 2 && type == 1) {
          price = [
            10.2,
            16.0,
            19.0,
            21.20,
            24.00,
            26.0,
            30.25,
            30.25,
            30.25,
            30.25,
            30.25
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 2 && type == 2) {
          price = [
            18.0,
            21.0,
            22.0,
            23.0,
            24.00,
            26.00,
            30.25,
            30.25,
            30.25,
            30.25,
            30.25
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 2 && type == 3) {
          price = [
            18.50,
            22.0,
            26.0,
            29.0,
            31.00,
            32.50,
            33.5,
            34.75,
            34.75,
            34.75,
            34.75
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 3 && type == 1) {
          price = [
            10.2,
            16.0,
            19.0,
            21.20,
            23.0,
            24.0,
            27.0,
            27.5,
            27.6,
            27.8,
            28.00
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 3 && type == 2) {
          price = [
            17.0,
            20.0,
            21.0,
            22.00,
            23.00,
            24.00,
            27.40,
            27.50,
            27.6,
            27.8,
            28.0
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        } else if (service == 3 && type == 3) {
          price = [
            18.25,
            21.5,
            25.5,
            28.50,
            31.00,
            31.50,
            31.75,
            31.70,
            32.0,
            32.25,
            32.25
          ];
          result = Calculte.calculateWater(price: price, water: newwater);
        }

        anssize = Calculte.calculateSize(size: newsize);

        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return ResultScreen(
            service: service,
            type: type,
            size: newsize,
            water: newwater,
            result: result,
            resultsize: anssize,
          );
        })));
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 83, 199, 241),
        ),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: const Text(
          "CALCULATE !",
          style: TextStyle(
            //color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
