import 'package:flutter/material.dart';
import 'package:pi_flutter/src/pages/navbar.dart';

import '../widgets/footer.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  List<Subject> subjects = [
    Subject(
      name: "Base de datos",
      id: 1
    ),
    Subject(
      name: "Base de datos",
      id: 2
    ),
    Subject(
      name: "Base de datos",
      id: 3
    ),
    Subject(
      name: "Base de datos",
      id: 4
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 77, 55, 201),
        title: Text('Asignaturas'),
      ),
      drawer: Nav(),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: subjects.length,
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
                          subjects[index].name,
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text("Nombre: ${subjects[index].name}"),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Lógica para agregar un producto aquí
                      print("Eliminado ${subjects[index].id}");
                    },
                  ),
                ],
                
              ),
              
            );
          },
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
class Subject {
  final int id;
  final String name;


  Subject({required this.name,required this.id});
}