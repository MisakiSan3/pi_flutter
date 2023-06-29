
import 'package:flutter/material.dart';
import 'package:pi_flutter/src/pages/navbar.dart';
import 'package:pi_flutter/src/widgets/footer.dart';

class TeacherForm extends StatefulWidget {
  const TeacherForm({super.key});

  @override
  State<TeacherForm> createState() => _TeacherFormState();
}
List<String> subjects = ['Base de datos','Programación web','Programación móvil'];
class _TeacherFormState extends State<TeacherForm> {
  String dropdownValue = subjects.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kuya Yana',
          style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 75, 90),
      ),
      drawer: Nav(),
       body:
        Container(
          padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 224, 75, 90),
                  Color.fromARGB(255, 91, 48, 90),])
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:25.0),
            TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Nombre Maestro',
                  hintText: 'Ingrese un nombre',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.person_2_sharp),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Apellido Maestro',
                  hintText: 'Ingrese un apellido',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Telf',
                  hintText: 'Ingrese un número celular',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.phone),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Correo electrónico',
                  hintText: 'Ingrese su correo electrónico',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              Container(
                decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 1)),
                child: DropdownButton(dropdownColor: Colors.white, items: subjects.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              value:dropdownValue, onChanged: (String? value){
                setState(() {
                  dropdownValue = value!;
                });
              }),
              ),
              SizedBox(height: 16.0),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 45.0,
                  child: ElevatedButton.icon(
                    onPressed: () {
                              
                      Navigator.pushNamed(context, '/teachers');
                    },
                    icon: Icon(Icons.add),
                    label: Text('Registrar maestro'),
                     style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 91, 48, 90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    ),
                  ),
                ),
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