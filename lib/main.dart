import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  final estilo = TextStyle(color:Colors.white, fontSize: 26.0);
  final misize = SizedBox(height: 10.0);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(     
        
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          children: [
            SizedBox(height: 70.0,),
            Image.asset("image/hipster.png", width: 250.0, height: 250.0,),
            Text('Nombre'),
            misize,
            _datos('Name', 'Ingrese su nombre'),
            Divider(),
            Text('Password'),
            misize,
            _datos('Password', 'Ingrese su password'),              
            Divider(),
            _button()
          ],
        ),
      ),
    );
  }

  Widget _datos(String name, String title){
    return TextField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: name,
        ),
    );
  }

  Widget _button(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
          child: FlatButton(
          color: Color.fromRGBO(41, 187, 234, 1),
          onPressed: (){},
          child: Text('Iniciar')
        ),
      ),
      SizedBox(width: 15.0),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
        color: Color.fromRGBO(41, 187, 234, 1),
        onPressed: (){},
        child: Text('Cancelar')
        ),
      )
      ],
      );
  }
}
