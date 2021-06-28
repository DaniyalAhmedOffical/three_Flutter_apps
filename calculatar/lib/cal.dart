import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';


class Call extends StatefulWidget {
  

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  var result = " ";

  Widget btn( var textt){

    return ElevatedButton(

      style: ButtonStyle(
       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
  ),
      onPressed: (){
  setState((){
    result = result + textt;
  }) ;
    }, child: Text(textt) , );
  
}

clear(){
  setState(() {
    result = " " ;
  });

}

equal(){
 
 Parser p = Parser();
 Expression exp = p.parse(result);
 ContextModel cm = ContextModel();
 double eval = exp.evaluate(EvaluationType.REAL, cm);


setState(() {
  result= eval.toString();
});
  
}

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:  Text("Calculator")),
      ),
      body: Center(
        child: SizedBox(height: 500,
          child: Column(children: [
            
            Text(result, style: TextStyle(fontSize: 30 , color: Colors.black ,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                btn("7"),
                btn("8"),
                btn("9"),
                btn("*"),
              ],
            ),
             SizedBox(height :10),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                btn("4"),
                btn("5"),
                btn("6"),
                btn("-"), 
              ],
            ), SizedBox(height :10),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                btn("1"),
                btn("2"),
                btn("3"),
                btn("+"),
              ],
            ),
             SizedBox(height :10),
             Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                btn("*"),
                btn("/"),
              ElevatedButton(
                 style: ButtonStyle(
       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
  ),
                onPressed: clear , child: Text("clear")),
              ElevatedButton(
                 style: ButtonStyle(
       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
  ),
                
                onPressed: equal , child: Text("=")),
              ],
            )
          ],),
        ),
      ),
      
    );
  }
}

