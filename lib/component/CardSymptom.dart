import 'package:flutter/material.dart';

class CardSymptom extends StatefulWidget {
  bool visible = true;
  String? name;
  bool yes = false;
  CardSymptom({Key? key, this.name}) : super(key: key);

  @override
  State <CardSymptom> createState() =>  CardSymptomState();
}

class  CardSymptomState extends State <CardSymptom> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green
                    ),
                    onPressed: () {
                      setState(() {
                        widget.visible = false;
                        widget.yes = true;
                      });
                    },
                    child: const Text('SI')
                  ),
                  const Divider(
                    indent: 20
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red
                    ),
                    onPressed: () {
                      setState(() {
                        widget.visible = false;
                      });
                    },
                    child: const Text('NO')
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}