import 'package:flutter/material.dart';
import 'package:good_doctor/business/diagnostic.dart';
import 'package:good_doctor/component/CardSymptom.dart';

import 'data/data.dart';

void main() => runApp(
  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Doctor App',
      home: FirstRoute()
  )
);

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/good_doctor_img.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black,
                child: const Text(
                  'NOTA: Basta con presionar SI solo en los Síntomas que está presentando',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Comenzar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Diagnostic diagnostic = Diagnostic();
  List<CardSymptom> listSymptoms = [];
  bool viewResults = false;

  List<CardSymptom> _loadSymptoms(){
    return Data.symptoms.map((symptom) {
      return CardSymptom(
          name: symptom
      );
    }).toList();
  }

  List<String> finalResults(int quantity){
    List<int> symptomIds = [];
    for (var symptom in listSymptoms) {
      if(symptom.yes == true){
        symptomIds.add(Data.symptoms.indexOf(symptom.name!) + 1);
      }
    }
    return diagnostic.results(quantity, symptomIds);
  }

  resultsHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'RESULTADOS :',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.yellow.shade300
            )
          ),
        ),
      ],
    );
  }

  List<Widget> myDiagnosis(int quantity){
    // Guardamos la Lista de Resultados
    List<String> results = finalResults(quantity);
    // Inicializamos la Lista de Widget que tendrá los Resultados
    List<Widget> finalData = [];
    if(results.isEmpty){
      finalData.add(
        const Center(
          child: Text(
            "\nNo existe porcentaje mayor a 50 %",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold
            )
          )
        )
      );
      return finalData;
    }
    // Agregamos la Cabecera a la Lista - El Título : RESULTADO
    finalData.add(resultsHeader());
    // Iteramos Cada Resultado
    for (var result in results) {
      // Guardamos en una Lista los datos de cada Resultados
      List<String> disease = result.split('&');
      String name = disease[0];
      String diagnostic = disease[1];
      String probability = disease[2];
      Widget widget = diagnostic.length != 0 ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RichText(
          text: TextSpan(
            text: '',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            children: [
              TextSpan(
                text: 'ENFERMEDAD : ',
                style: TextStyle(
                  color: Colors.yellow.shade300
                )
              ),
              TextSpan(
                text: name,
              ),
              const TextSpan(
                text: '\n',
              ),
              TextSpan(
                text: 'PORCENTAJE : ',
                style: TextStyle(
                  color: Colors.yellow.shade300
                )
              ),
              TextSpan(
                text: probability,
              ),
              const TextSpan(
                text: ' %\n',
              ),
              TextSpan(
                text: 'DIAGNÓSTICO : ',
                style: TextStyle(
                  color: Colors.yellow.shade300
                )
              ),
              TextSpan(
                text: diagnostic,
              ),
              const TextSpan(
                text: '\n',
              ),
            ],
          ),
        )
      ):
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RichText(
          text: TextSpan(
            text: '',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            children: [
              TextSpan(
                text: 'ENFERMEDAD : ',
                style: TextStyle(
                  color: Colors.yellow.shade300
                )
              ),
              TextSpan(
                text: name,
              ),
              const TextSpan(
                text: '\n',
              ),
              TextSpan(
                text: 'PORCENTAJE : ',
                style: TextStyle(
                  color: Colors.yellow.shade300
                )
              ),
              TextSpan(
                text: probability,
              ),
              const TextSpan(
                text: ' %\n',
              )
            ],
          ),
        )
      );
      finalData.add(widget);
    }
    return finalData; 
  }

  _load(){
    listSymptoms = _loadSymptoms();
    listSymptoms.sort(((a, b) => a.name!.compareTo(b.name!)));
    diagnostic.loadDiseases();
  }

  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildListSymptoms(),
            _buildButtonViewResults(),
            _buildMyDiagnosis(),
            _buildButtonClose()
          ],
        ),
      )
    );
  }
  _buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Good Doctor 🩺',
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
  _buildListSymptoms(){
    return Visibility(
      visible: !viewResults,
      child: Expanded(
        flex: 15,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listSymptoms,
          ),
        ),
      ),
    );
  }
  _buildButtonViewResults(){
    return Visibility(
      visible: !viewResults,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900]
              ),
              child: const Text("Ver Resultados"),
              onPressed: () {
                setState(() {
                  viewResults = !viewResults;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
  _buildMyDiagnosis(){
    return Visibility(
      visible: viewResults,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.lightBlue
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: myDiagnosis(1),
              ),
            ),
          ),
        ),
      ),
    );
  }
  _buildButtonClose(){
    return Visibility(
      visible: viewResults,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Cerrar"),
              onPressed: () {
                _load();
                setState(() {
                  viewResults = !viewResults;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}