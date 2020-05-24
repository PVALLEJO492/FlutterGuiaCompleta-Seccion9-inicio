import 'package:flutter/material.dart';
import 'package:qrreaderapp/pages/direcciones_page.dart';
import 'package:qrreaderapp/pages/mapa_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _callPage(0),
            bottomNavigationBar: _crearBottomNavigationBar(),
          );
        }

        Widget _crearBottomNavigationBar() {
          return BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex=index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('mapas')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.brightness_5), title: Text('Direcciones')),
            ],
          );
        }

        Widget _callPage(int paginaActual) {
          switch(paginaActual){
            case 0:return MapasPage();
            case 1:return DireccionesPage();
            default:
            return MapasPage();
          }
        }
}
