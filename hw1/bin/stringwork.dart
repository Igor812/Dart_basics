

class StringWork{

  List<String> findCount(String inComeString){

    List<num> resultList = [];
    RegExp digitRegExp = RegExp(r"[^0-9]+");
    String res = inComeString.replaceAll(digitRegExp, ' ');

    List<String> subResult = res.split(" ");

    for (int i=0;i<subResult.length; i++) {
      if(subResult[i].isNotEmpty){
        resultList.add(num.parse(subResult[i]));
      }
    }
    print(resultList);
    return subResult;
  }

}