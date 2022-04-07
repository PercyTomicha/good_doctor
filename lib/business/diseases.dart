import 'symptoms.dart';

class Disease{
  Symptoms? root;
  int? id;
  String? name;
  String? diagnostic;

  Disease(this.id, this.name, this.diagnostic){
    root = null;
  }

  insert(int symptomId, int probability){
    root = _insert(root, symptomId, probability);
  }

  Symptoms _insert(Symptoms? p, int symptomId, int probability){
    if(p == null){
      return Symptoms(symptomId, probability);
    }
    if(symptomId < p.symptomId){
      p.leftSon = _insert(p.leftSon, symptomId, probability);
    }
    else if(symptomId > p.symptomId){
      p.rightSon = _insert(p.rightSon, symptomId, probability);
    }
    return p;
  }

  inOrden(){
    _inOrden(root);
  }

  _inOrden(Symptoms? p){
    if(p == null) return;
    _inOrden(p.leftSon);
    print('${p.symptomId} -> ${p.probability}');
    _inOrden(p.rightSon);
  }

  int getProbability(int symptomId){
    return _getProbability(root, symptomId);
  }
  int _getProbability(Symptoms? p, int symptomId){
    if(p == null){
      return 0;
    }
    else{
      int probabilityLeft = _getProbability(p.leftSon, symptomId);
      int probabilityRight = _getProbability(p.rightSon, symptomId);
      int sum = probabilityLeft + probabilityRight;
      if( sum == 0 ){
        if(symptomId == p.symptomId) return p.probability;
      }
      return sum;
    }
  }
  int probabilityTotal(List<int> listSymptoms){
    int sum = 0;
    for (int symptomId in listSymptoms) {
      sum += getProbability(symptomId);
    }
    return sum;
  }
}