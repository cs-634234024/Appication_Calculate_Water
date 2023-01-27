// ignore_for_file: avoid_print

class Calculte {
  static double anssize = 0;

  static double result = 0;

  static int newsize = 0;

  static List<double> price = [];

  static double calculateWater(
      {required int water, required List<double> price}) {
    int count = 0;
    List<double> number = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    if (water > 3000) {
      count = water - 3000;
      number[10] = count * price[10];
      water = 3000;
    }
    if (water <= 3000 && water >= 2001) {
      count = water - 2000;
      number[9] = count * price[9];
      water = 2000;
    }
    if (water > 1000 && water <= 2000) {
      count = water - 1000;
      number[8] = count * price[8];
      water = 1000;
    }
    if (water > 300 && water <= 1000) {
      count = water - 300;
      number[7] = count * price[7];
      water = 300;
    }
    if (water > 100 && water <= 300) {
      count = water - 100;
      number[6] = count * price[6];
      water = 100;
    }
    if (water > 80 && water <= 100) {
      count = water - 80;
      number[5] = count * price[5];
      water = 80;
    }
    if (water > 50 && water <= 80) {
      count = water - 50;
      number[4] = count * price[4];
      water = 50;
    }
    if (water > 30 && water <= 50) {
      count = water - 30;
      number[3] = count * price[3];
      water = 30;
    }
    if (water > 20 && water <= 30) {
      count = water - 20;
      number[2] = count * price[2];
      water = 20;
    }
    if (water > 10 && water <= 20) {
      count = water - 10;
      number[1] = count * price[1];
      water = 10;
    }
    if (water > 0 && water <= 10) {
      count = water - 0;
      number[0] = count * price[0];
    }
    for (int i = 0; i < number.length; i++) {
      result = result + number[i];
    }

    return result;
  }

  static double calculateSize({required int size}) {
    switch (size) {
      case 1:
        size = size + 30 - 1;
        print(size);
        break;
      case 2:
        size = size + 50 - 2;
        print(size);
        break;
      case 3:
        size = size + 60 - 3;
        print(size);
        break;
      case 4:
        size = size + 90 - 4;
        print(size);
        break;
      default:
    }
    anssize = double.parse(size.toString());
    return anssize;
  }
}
