import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  final _estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final _estiloSubtitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  Widget build(BuildContext context) {
    return Scaffold(
      //para poder hacer scroll y que se vea bonito
        body: SingleChildScrollView(
          child: Column(
           children: <Widget>[
             _crearImagen(),
             _crearTitulo(), 
             _crearAcciones(),
             _crearTexto(),
             _crearTexto(),
             _crearTexto(),
             _crearBoton(context)
           ],
          ),
        )
    );
  }


Widget _crearImagen(){
return Image(image: NetworkImage( 'https://wallpaperplay.com/walls/full/d/3/6/13585.jpg'));
}


  // widgets
  Widget _crearTitulo(){
    return  Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Foto Montañas', style: _estiloTitulo),
                    SizedBox(height: 7.0),
                    Text('Imagen de Montañas en EE.UU', style: _estiloSubtitulo),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.red, size: 30.0),
              Text('41', style: TextStyle(fontSize: 20.0))
            ],
          ),
        );
  }

 Widget _crearAcciones(){
   return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
       _accion(Icons.call, 'Call'),
       _accion(Icons.near_me, 'Route'),
       _accion(Icons.share, 'Share')
     ],
   );
 }


 Widget _accion(IconData icon, String text){
   return Column(
     children: <Widget>[
       Icon(icon, color: Colors.blue, size: 40.0),
       Text(text, style: TextStyle( fontSize: 15.0, color: Colors.blue ))
     ],
   );
 }

 _crearTexto(){
   return Container(
     padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0 ),
     child: Text('Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final. También se usa en programas como Microsoft PowerPoint o Genially como plantillas para remplazar con texto comprensible.', textAlign: TextAlign.justify)
   );
}

Widget _crearBoton(BuildContext context){
  return Container(
    child: Center(
        child: FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'scroll'), 
        child: Text('Ir a la otra pagina', style: TextStyle( color: Colors.white, fontSize: 15.0 ),),
        color: Colors.indigoAccent,
        shape: StadiumBorder()), 
    )
  );
}
}