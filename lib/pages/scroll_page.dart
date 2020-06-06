import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context)
        ],
      )
    );
  }


  Widget _pagina1(){
    // para ocupar toda la pagina
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _texto()
      ],
    );
  }


  Widget _pagina2(BuildContext context){
   return Stack(
      children: <Widget>[
        _colorFondo(),
        _boton(context)
      ],
    );
  }
}

Widget _imagenFondo(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Image(image: AssetImage('assets/original.png'), fit: BoxFit.cover),
  );
}

Widget _colorFondo(){
return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 1.0),
  );
}

Widget _texto(){
  final estiloTexto = TextStyle( color: Colors.white, fontSize: 50.0 );

  return Column(
    children: <Widget>[
      SizedBox( height: 20.0),
      Text('11°', style: estiloTexto),
      Text('Miercoles', style: estiloTexto),
      Expanded(child: Container()),
      Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
    ],
  );
}


Widget _boton(BuildContext context){
final estiloTexto = TextStyle( color: Colors.white, fontSize: 20.0 );

  return Center(
    child: Container(
     child: FlatButton(
       onPressed: () => Navigator.pushNamed(context, 'botones'), 
       color: Colors.blueAccent,
       shape: StadiumBorder(),
       child: Padding(
         padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0 ),
         child: Text('Bienvenido', style: estiloTexto),
        ), 
        ),    
    ),
  );
}