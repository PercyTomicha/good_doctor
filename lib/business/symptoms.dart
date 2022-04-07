class Symptoms{
  Symptoms? leftSon;
  Symptoms? rightSon;
  int symptomId;
  int probability;
  Symptoms(this.symptomId, this.probability){
    leftSon = null;
    rightSon = null;
  }
}