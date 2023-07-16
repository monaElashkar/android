// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, camel_case_types
import 'package:flutter/material.dart';
class resalt extends StatefulWidget {
  final score;
  final restart;
  const resalt({required this.score,required this.restart});

  @override
  State<resalt> createState() => _resaltState();
}

class _resaltState extends State<resalt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Your Score is ${widget.score}",
            style: const TextStyle(
                color: Colors.cyan,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed:(){
             widget.restart();
            },
            child: const Text("Restart", style: TextStyle(color: Colors.cyan, fontSize: 30, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
