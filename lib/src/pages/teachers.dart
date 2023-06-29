import 'package:flutter/material.dart';
import 'package:pi_flutter/src/pages/navbar.dart';

class TeachersPage extends StatefulWidget {
  const TeachersPage({super.key});

  @override
  State<TeachersPage> createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  List<Teacher> teachers = [
    Teacher(
      name: "Sigilfredo",
      email: 'sigil@gmail.com', 
      subject: 'Base de datos',
       surname: 'Segundo', 
       telf: '098765432',
    ),
    Teacher(
      name: "Sigilfredo",
      email: 'sigil@gmail.com', 
      subject: 'Base de datos',
       surname: 'Segundo', 
       telf: '098765432',
    ),Teacher(
      name: "Sigilfredo",
      email: 'sigil@gmail.com', 
      subject: 'Base de datos',
       surname: 'Segundo', 
       telf: '098765432',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 224, 75, 90),
        title: Text('Maestros'),
      ),
      drawer: Nav(),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: teachers.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          teachers[index].name,
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text("Nombre: ${teachers[index].name} ${teachers[index].surname}"),
                        Text("Email: ${teachers[index].email}"),
                        Text("Teléfono: ${teachers[index].telf}"),
                        Text("Asignatura: ${teachers[index].subject}"),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Lógica para agregar un producto aquí
                      print("Eliminado ${teachers[index].subject}");
                    },
                  ),
                ],
                
              ),
              
            ); 
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pushNamed(context, '/TeacherForm');
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        ),
        
      );
  }
}
class Teacher {
  final String name;
  final String surname;
  final String email;
  final String telf;
  final String subject;


  Teacher({required this.name,required this.surname,required this.email,required this.telf,required this.subject});
}
