import 'package:flutter/material.dart';
import 'package:pi_flutter/src/pages/navbar.dart';
import 'package:intl/intl.dart';
import 'package:pi_flutter/src/widgets/footer.dart';
class EventsForm extends StatefulWidget {
  const EventsForm({super.key});

  @override
  State<EventsForm> createState() => EventsFormPage();
}

class EventsFormPage extends State<EventsForm> {
  TextEditingController dateinput = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 54, 224),
        title: Text('Registrar evento'),
      ),
      drawer: Nav(),
      body:  Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 77, 55, 201),
                Color.fromARGB(255, 27, 27, 27),])
              ),
              
        child: ListView(    
          children:<Widget> [
            Text(
                      'Registro',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
            Center(
              child: Padding(padding: EdgeInsets.all(15.0),
              child: Column(
            children: [
              SizedBox(height: 25.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese un tiulo',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.person),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(child:
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: TextField(
                      controller: dateinput, //editing controller of this TextField
                      decoration: InputDecoration( 
                         suffixIcon: Icon(Icons.calendar_today), //icon of text field
                         labelText: "Fecha inicio",
                         fillColor: Colors.white,
                         filled: true, //label text of field
                      ),
                      readOnly: true,  //set it true, so that user will not able to edit text
                      onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context, //context of current state
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101)
                          );
                          }
                                      ),
                    ),
                    
                    ),
                    Expanded(child: 
                    TextField(
                    controller: dateinput, //editing controller of this TextField
                    decoration: InputDecoration( 
                       suffixIcon: Icon(Icons.calendar_today), //icon of text field
                       labelText: "Fecha fin",
                       fillColor: Colors.white,
                       filled: true, //label text of field
                    ),
                    readOnly: true,  //set it true, so that user will not able to edit text
                    onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context, //context of current state
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                        );
                        }
                    
                
                  ), 
                    ),
                  ],
                ),
              ),
               
              TextField(
                decoration: InputDecoration(
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
                  labelText: 'Descripción',
                  hintText: 'Describa el evento',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Calendar');
                },
                child: Text('Añadir evento'),
              ),
            ],
          ),
              ),  
            )
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
