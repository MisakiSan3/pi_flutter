import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Randy Romero'),
            accountEmail: Text('leolmini_99@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                
                child: Image.asset('assets/images/descarga.png'),
              ),
            ),
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                
                  Color.fromARGB(255, 224, 75, 90),
                  Color.fromARGB(255, 91, 48, 90),]),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('Calendario'),
              onTap: () => Navigator.pushNamed(context, '/Calendar'),
            ),
          ),
           ListTile(
            leading: Icon(Icons.house),
            title: Text('Home'),
            onTap: () => {
              Navigator.pushNamed(context, '/Servicios')
              },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: () => {
              Navigator.pushNamed(context, '/Profile')
              },
          ),
          ListTile(
            leading: Icon(Icons.person_2_rounded),
            title: Text('Maestros'),
            onTap: () => {
              Navigator.pushNamed(context, '/teachers')
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Materias'),
            onTap: () =>{
              Navigator.pushNamed(context, '/Subjects')
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () => {
              Navigator.pushNamed(context, '/FAQ')
            }
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('Lector Qr'),
            onTap: () => {
              Navigator.pushNamed(context, '/Qr')
            }
          ),
        ],
      ),
    );
  }


}