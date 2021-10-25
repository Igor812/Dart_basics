
class StringCount{

  Map<String,int> countElement (String inputString){

    Map<String,int> resultStr ={"1":1};
    List<String> elementsString = inputString.split(" ");

    for(int i = 0 ; i<elementsString.length;i++){
      print(elementsString);
    }
    return resultStr;
    }

}