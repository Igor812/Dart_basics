import 'dart:collection';

class ConvertBinarySystem {
  var list = [];

  void convertToBinary(int count) {

    {
      if (count == 1) {
        list.add("1");
     //   print("1");
        return;
      }
      if (count % 2 == 0) {
     //   print("0");
        list.add("0");
        count = (count ~/ 2);

      } else {
     //    print("1");
         list.add("1");

        count = (count ~/ 2);
      }
      convertToBinary(count);
    }

    print(list.reversed);

  }


  void convertFromBinary(int count) {
    String str = count.toString();
    print(str.length);


}}
