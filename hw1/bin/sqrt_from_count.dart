
  extension SqrtCount on num {
    double Degree(double count, double degree)
    {
      double result = 1;
      for (int i = 0; i < degree; i++) result *= count;
      return result;
    }

    double SqrCount(double degreeN, double accurancy)
    {
      num count = this as num;
      dynamic intermediateResult = count / degreeN;
      dynamic resultCount = (1 / degreeN) * ((degreeN - 1) * intermediateResult + count / Degree(intermediateResult, (degreeN - 1)));

      while ((resultCount - intermediateResult) > accurancy)
      {
        intermediateResult = resultCount;
        resultCount = (1 / degreeN) * ((degreeN - 1) * intermediateResult + count / Degree(intermediateResult, (degreeN - 1)));
      }
      while ((intermediateResult - resultCount) > accurancy)
      {
        intermediateResult = resultCount;
        resultCount = (1 / degreeN) * ((degreeN - 1) * intermediateResult + count / Degree(intermediateResult, (degreeN - 1)));
      }

      return resultCount;
    }
}