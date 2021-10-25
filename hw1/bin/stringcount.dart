
import 'dart:collection';

class StringCount{

  Map<String,int> countElement (String inputString){

    Map<String,int> resultStr ={};
    RegExp exp = RegExp(r"[^a-zA-Zа-яА-Я]+");
    List<String> elementsString = inputString.replaceAll(exp," ").split(" ");
    elementsString = elementsString.map((email)=>email.toLowerCase()).toList();
    print(elementsString);
    Set<String> subBuffer = {};

    for(int i = 0 ; i<elementsString.length;i++){
      subBuffer.add(elementsString[i]);
    }

      for(int j = 0; j<subBuffer.length;j++) {
      int count = 0;
      for (int i=0; i<elementsString.length; i++) {
        if (elementsString[i]==subBuffer.elementAt(j)){
          count=count+1;
        }
        resultStr[subBuffer.elementAt(j)]=count;
      }
    }
    print(resultStr.toString());
    return resultStr;
    }

}