import 'dart:io';
import 'package:dart_exercise_2/lucky.dart';

void main(List<String> clArgs) {
  print('MIN Environment Variable: ${Platform.environment['MIN']}');
  print('MAX Environment Variable: ${Platform.environment['MAX']}');

  for (String name in clArgs) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);

    var luckyNumber = Lucky();
    print('Hello $capitalizedName. Your lucky number is ${luckyNumber.luckyNum}');
  }
}
