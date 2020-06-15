import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Rolling Dice"),),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.purple,
        drawer: Drawer(
          
          child:ListView(
            padding: EdgeInsets.all(3.0),
            
            children: <Widget>[
              Container(
                
                height: 100.0,
                child: DrawerHeader(child: Center(child: Text("Welcome Screen")),),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Welcome"),
                trailing: Icon(Icons.announcement),

                
              ),
              ListTile(
                leading: Icon(Icons.accessible_forward),
                title: Text("About"),
                trailing: Icon(Icons.announcement),

                
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Content"),
                trailing: Icon(Icons.announcement),

                
              ),
              ListTile(
                leading: Icon(Icons.games),
                title: Text("Contact us"),
                trailing: Icon(Icons.announcement),

                
              ),
            ],
          )
        ),
        body:DicePage(),
      ),
    );
  }

}
class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
    var random=new Random();
    int diceNumber=2;
    
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        children: <Widget>[
        Expanded(
                    child: FlatButton(onPressed: (){
             setState(() {
               diceNumber=random.nextInt(6)+1;
             });          

           }, child: Image.asset('images/dice$diceNumber.png')),
         ),
         SizedBox(
           height: 200.0,
           
           child:Row(
             children:<Widget>[
               Container(height:100.0,margin:EdgeInsets.all(50.0),child: Image.asset("images/facebook.png")),
               Container(height:100.0,child: Image.asset("images/whatsapp.png")),
             ]
           )
         ),
         
         
         
        
         
         
        
          
        ],
      ),
    );
  }
}

 

void main()=>runApp(MyApp());