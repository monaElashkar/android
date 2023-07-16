// ignore_for_file: camel_case_types

import 'package:flutter/material.dart' ;
import '../qeution.dart';
import 'answer.dart';
class qeiz extends StatefulWidget {
  const qeiz({Key? key}) : super(key: key);

  @override
  State<qeiz> createState() => _qeizState();
}

class _qeizState extends State<qeiz> {
  int index=0;
  changeindex(){
    if(index<=2){
      index++;
      setState(() {});
    }
  }
  zeroindex(){
    index=0;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset( "images/image_queiz_app.jpg",width: 100,height: 100,),
            const SizedBox(height: 15,),
            qeution(index: index,),
            answer(fun: changeindex,index: index,zeroindex: zeroindex,),
          ],
        ),
      ),
    );
  }
}
