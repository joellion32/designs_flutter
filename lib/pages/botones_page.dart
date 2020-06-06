import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: <Widget>[
         _fondo(),
         SingleChildScrollView(
           child: Column(
             children: <Widget>[
               _titulos(),
               _botonesRedondeados()
             ],
           ),
         ),
       ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(52, 54, 101, 1.0),
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Container())
        ]),
    );
  }

  Widget _fondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
        ),
      ),
    );

    return Stack(
        children: <Widget>[gradiente, Positioned(child: cajaRosa, top: -100)]);
  }



  Widget _titulos(){
    return SafeArea(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Classify transtaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
              SizedBox( height: 10.0 ),
              Text('Classify transtaction a into particular category', style: TextStyle(color: Colors.white, fontSize: 15.0))
            ],
          ),
        ),
      ),
      );
  }

  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearbotonRedondeado(Colors.blueAccent, Icons.switch_camera, 'Camera'),
            _crearbotonRedondeado(Colors.indigoAccent, Icons.switch_video, 'Video')
          ]
        ),
        TableRow(
         children: [
            _crearbotonRedondeado(Colors.pinkAccent, Icons.verified_user, 'User'),
            _crearbotonRedondeado(Colors.yellowAccent, Icons.music_note, 'Music')
          ]
        ),
        TableRow(
         children: [
            _crearbotonRedondeado(Colors.greenAccent, Icons.border_all, 'Border'),
            _crearbotonRedondeado(Colors.orangeAccent, Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
         children: [
             _crearbotonRedondeado(Colors.blue, Icons.shop, 'Buy'),
            _crearbotonRedondeado(Colors.indigoAccent, Icons.insert_photo, 'Photo')
          ]
        ),
        TableRow(
         children: [
            _crearbotonRedondeado(Colors.blue, Icons.switch_camera, 'Camara'),
            _crearbotonRedondeado(Colors.indigoAccent, Icons.switch_video, 'Video')
          ]
        ),
        TableRow(
         children: [
            _crearbotonRedondeado(Colors.blue, Icons.switch_camera, 'Camara'),
            _crearbotonRedondeado(Colors.indigoAccent, Icons.switch_video, 'Video')
          ]
        )
      ],
    );
  }


 Widget _crearbotonRedondeado(Color color, IconData icon, String texto){
   return Container(
     height: 180.0,
     margin: EdgeInsets.all(15.0),
     decoration: BoxDecoration(
       color: Color.fromRGBO(62, 66, 107, 0.7),
       borderRadius: BorderRadius.circular(20.0)
     ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox( height: 5.0),
        CircleAvatar(
         backgroundColor: color, 
         radius: 30.0,
         child: Icon(icon, color: Colors.white, size: 30.0),
        ),
        Text(texto, style: TextStyle(color: color)),
        SizedBox( height: 5.0)
      ],
     ),
   );
 }
}


