// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pi_flutter/src/widgets/footer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color.fromARGB(255, 224, 75, 90),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100),

            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 90,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(height: 50),
            Text(
              'Nombre de Usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Randy Romero',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            Text(
              'Correo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'leolmini_99@hotmail.com',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            Text(
              'Descripcion',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Tengo X años ...',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Center(
            child:Footer(),
          ),
        ),
      ),
    );
  }
}
