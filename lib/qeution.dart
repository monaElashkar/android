import 'package:flutter/material.dart';
class qeution extends StatefulWidget {
  final index;
  const qeution({Key? key,required this.index}) : super(key: key);

  @override
  State<qeution> createState() => _qeutionState();
}
List q=["what's your fav color?","what's your fav team?","what's your fav player?"];
class _qeutionState extends State<qeution> {
  @override
  Widget build(BuildContext context) {
      return widget.index<3 ?
      Text(q[widget.index],style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),):
      Container(
        color: Colors.white ,
        height:  20 ,
      );
  }
}
