import 'package:flutter/material.dart';



class Todo extends StatefulWidget {
  const Todo({ Key? key }) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  

  List<dynamic>lst = [1,2,3];
 var  output = " " ;

  
  
  
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      
      
      //list jesy view k liye listview use kiya ha 
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context,index){
         
        //  listview k ander container rhka ha  us m child rhka ha phr  list ki styling ki ha  
          return Container(
            height : 50 , color : Colors.greenAccent, 
            margin: EdgeInsets.only(top: 20),
            child: ListTile(title: Text("${lst[index]}"),   /// text m direct list nh rhk sakty thy is liye $ k sign k st rhka
            trailing: Container(width : 50 ,  
            child: Row(
            children: [
              GestureDetector(onTap: (){   //kisi b chz ko click able banane k liye use hoti ha ye property 
                showDialog(context: context, builder : (context){   ///page k ri8 side pr last m ek botton aata ha jis ko click krty hai tw ye dailog box aae ga us k liye hota ha ye
         return AlertDialog(title: Text("Edit"),
         content : TextField(onChanged: (value){
           output = value;
         }), 
         actions: [
           ElevatedButton(onPressed: (){
             setState((){
               lst.replaceRange(index, index +1, {output}); //edit kry tw replace ho jye wo is  k liye ha ye nichy same line ha lakin waha sirf output ha qk wo edit nh new add bana rhy hai is liye 
             });
             Navigator.of(context).pop(); //ye input ko list m pop kr de ga
           }, child: Text("Edit Itmes"))
         ],) ;
       });



             },

             child : Icon(Icons.edit)),

             GestureDetector(onTap: (){
              setState(() {
                lst.removeAt(index);});},

             child : Icon(Icons.delete)),


       
             ]
            )),
            
            )
            
          );


        }
        ),
     floatingActionButton: FloatingActionButton(onPressed: () {    //page k ri8 m wo botton aata is ki waja sy ha.
       showDialog(context: context, builder : (context){
         return AlertDialog(title: Text("Add"), 
         content : TextField(onChanged: (value){
           output = value;
         }), 
         actions: [
           ElevatedButton(onPressed: (){
             setState((){
               lst.add(output); ///ye line new entry k liye ha is liye yaha add aae ga upr replace aya ha qk replace kiya ha ham ny 
             });
             Navigator.of(context).pop();
           }, child: Text("Add Itmes"))
         ],) ;
       });
     },child: Text("Add"))      
    );
  }
}