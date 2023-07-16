import 'package:flutter/material.dart';

import 'resalt.dart';

class answer extends StatefulWidget {
  final fun;
  final zeroindex;
  final index;

  const answer({Key? key, this.fun, this.index, this.zeroindex}) : super(key: key);

  @override
  State<answer> createState() => _answerState();
}

class _answerState extends State<answer> {
  List<List<Map<String,dynamic>>> an = [
    [
      {"ansar":'pink',"score":10},
      {"ansar":"red","score":0},
      {"ansar":"yellow","score":0},
      {"ansar":"black","score":0},
    ],
    [{"ansar":"Alahly","score":10},
      {"ansar":"RealMadrid","score":0},
      {"ansar":"Zamalek","score":0},
      {"ansar":"Barcalona","score":0},
     ],
    [{"ansar":"zizo","score":10},
      {"ansar":"Ramadan Sobhi","score":0},
      {"ansar":"shika","score":0},
      {"ansar":"Emam","score":0},
     ]
  ];
  int score = 0;
resaltt(){
  widget.zeroindex();
  score=0;
  setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.index < an.length)
          ...an[widget.index].map((Item) => Column(
                children: [
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap:(){
                      score+=Item["score"] as int;
                      widget.fun();
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade600,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        Item['ansar'],
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )),
        if (widget.index == an.length)
          resalt(score: score,restart: resaltt,),
      ],
    );
  }
}
