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

    int itemResult=1;
    int countResult = 0;




    for (int j = 0; j<=str.length-1; j++) {

      for (int i = str.length -j; i > 1; i--) {

        if (str[i-1]=="1"){
        itemResult = itemResult+itemResult * 2;
        print(itemResult);} else {itemResult=0;}

      }

      countResult= countResult + itemResult;
    }



    int result =0;
    for (int i=0; i<countResult.toString().length; i++) {

      result = result+int.parse(countResult.toString()[i]);
    }
    print("Ответ: " + result.toString());

}}
