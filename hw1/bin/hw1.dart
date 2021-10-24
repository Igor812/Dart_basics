import 'convertbinarysystem.dart';
import 'delimeterscalculator.dart';
import 'stringwork.dart';

void main(List<String> arguments) {

 //  DelimeterScalculator delimiters = DelimeterScalculator();
 // //задача 1
 //  print(delimiters.nod(15, 20));
 //  print(delimiters.nok(15, 20));
 //  delimiters.factorize(10, 2);

 //задача 2
  ConvertBinarySystem convertBinarySystem = ConvertBinarySystem();
  convertBinarySystem.convertToBinary(56);
  convertBinarySystem.convertFromBinary(101);
// задание 3
  StringWork stringWork = StringWork();
  stringWork.findCount("Пример строки, содержещей 1 цифру и 2");

}
