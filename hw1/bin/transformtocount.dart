class TransformLetters {

  Set<num> transformLetters(String inputString) {
    RegExp exp = RegExp(r"[^a-zA-Z]+");
    List<String> elementsString = inputString.replaceAll(exp, " ").split(" ");
    elementsString =
        elementsString.map((letters) => letters.toLowerCase()).toList();
    Set<String> subBuffer = {};
    Set<int>  resultStr = {};
    for (int i = 0; i < elementsString.length; i++) {
      subBuffer.add(elementsString[i]);
    }
  Map<int,String> letterTransform = {0:"zero", 1:"one", 2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine"};
    for (int j = 0; j < subBuffer.length; j++) {
      for (int i=0; i<letterTransform.length; i++) {
        if (subBuffer.elementAt(j)==letterTransform.values.elementAt(i)) {
          resultStr.add(letterTransform.keys.elementAt(i));
        }
    }}
    print(resultStr.toString());
    return resultStr;
  }
}
 
