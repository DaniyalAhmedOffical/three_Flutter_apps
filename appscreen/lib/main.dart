import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
          @override
     Widget build(BuildContext context) {
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold( 
          appBar: AppBar
          (title: 
          Center(
            child: Text("Ecom App UI",
            
              
             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, ),),
          ),
           backgroundColor: Colors.white,
           actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
         
           ]),
        
      
          
           body:SingleChildScrollView(child: 
           Center(
            child: Center(
              child: Column(children: [
                SizedBox(height: 10,),
                Container(
                //  width : MediaQuery.of(context).size.width*0.5 ,
                
                 child: TextField(decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 suffixIcon: Icon(Icons.search),
                 hintText: 'Username'
                         ),)),



            ListTile(
            
           title: Text("History"  ,
           style: TextStyle(
             fontWeight: FontWeight.bold,
              fontSize: 15),),
           
        
      ),

            ListTile(leading:CircleAvatar(
           backgroundImage:AssetImage("assets/download.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Note 20 ultra"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))


            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/mackbook.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Macbook Pro"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))



            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/gaming.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Gaming PC"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))


            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/keyboard.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Backlit Keyboard"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))

            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/s10.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Samsung S10"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))
            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/vivo.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Vivo V12"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))

            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/Infi.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Infnix note 8"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))

            ,ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage("assets/nokia-2-1.jpg"),
             radius: 20, 
             backgroundColor: Colors.black,)
           , title: Text("Nokia 2.0"),subtitle: Text("⭐ 5.0(23 Reviews)"),
           
           trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [Text("\$ 10" , style: TextStyle(fontSize: 15 , ),),
            ],))

        ],
      ),
                
               ),),)),);
                




     }


}