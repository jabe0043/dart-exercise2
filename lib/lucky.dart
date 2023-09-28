import 'dart:io';
import 'dart:math';

class Lucky {
  // nullable int - this will be null before a value is assigned by the constructor
  int? luckyNum;

  //constructor
  Lucky() {
    String minEnv = Platform.environment['MIN'] ?? '10';  //retrieve the MIN env variable. minEnv is non-nullable, so if it doesnt exist, give it a default value of 10
    String maxEnv = Platform.environment['MAX'] ?? '100';

    int minNum = int.parse(minEnv); 
    int maxNum = int.parse(maxEnv);

    var randomNum = Random();
    luckyNum = minNum + randomNum.nextInt(maxNum - minNum + 1);
  }
}
