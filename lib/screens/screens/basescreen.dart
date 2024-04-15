import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
     Text('Calendario', textAlign: TextAlign.center), // Calendario // Historial
     Text('Calendario', textAlign: TextAlign.center), // Calendario
      Text('Calendario', textAlign: TextAlign.center), // Calendario
    Text('Calendario', textAlign: TextAlign.center), // Calendario
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 13, 11, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(Icons.book, 'Historial', 0),
            _buildNavItem(Icons.calendar_today, 'Calendar', 1),
            _buildNavItem(Icons.bar_chart, 'Stats', 3),
            _buildNavItem(Icons.person, 'Profile', 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => setState(() => _selectedIndex = index),
      splashColor: Colors.transparent, // Removes ripple effect
      highlightColor: Colors.transparent, // Removes highlight effect
      child: Container(
        width: 60, // Ancho para cada botón de icono
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon,
                size: 24,
                color: _selectedIndex == index ? Colors.white : Colors.grey),
            Text(label,
                style: TextStyle(
                    color: _selectedIndex == index ? Colors.white : Colors.grey,
                    fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
