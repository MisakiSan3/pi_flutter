import 'package:flutter/material.dart';
import 'package:pi_flutter/src/widgets/footer.dart';

import 'navbar.dart';

class ServiciosPages extends StatefulWidget {
  const ServiciosPages({super.key});

  @override
  State<ServiciosPages> createState() => _ServiciosPagesState();
}

class _ServiciosPagesState extends State<ServiciosPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Nav(),
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
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            Text(
              'Bienvenido Randy',
              style: const TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 91, 48, 90),
              ),
            ),
            const SizedBox(
              child: Image(
                image: AssetImage(
                    'assets/images/logo.png'),
                height: 250,
                width: 300,
              ),
            ),
            Text(
              'Esta Es Tu Agenda Virtual',
              style: const TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 91, 48, 90),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Expanded(child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 91, 48, 90),
                    child: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/Calendar');
                    }, icon: Icon(Icons.calendar_month),
                    color: Color.fromARGB(255, 247, 247, 247),),
                  )),
                   Expanded(child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 91, 48, 90),
                    child: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/teachers');
                    }, icon: Icon(Icons.person_search),
                    color: Color.fromARGB(255, 247, 247, 247),),
                  )),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: Center(child: Text('2 Eventos'))),
                Expanded(child: Center(child: Text('10 Maestros')))
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Expanded(child: CircleAvatar(
                     backgroundColor: Color.fromARGB(255, 91, 48, 90),
                    child: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/Subjects');
                    }, icon: Icon(Icons.book),
                    color: Color.fromARGB(255, 247, 247, 247),),
                  )),
                   Expanded(child: CircleAvatar(
                     backgroundColor: Color.fromARGB(255, 91, 48, 90),
                    child: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/FAQ');
                    }, icon: Icon(Icons.question_answer),
                    color: Color.fromARGB(255, 255, 255, 255),
                    
                    ),
                  )),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: Center(child: Text('10 Asignaturas'))),
                Expanded(child: Center(child: Text('Preguntas frecuentes')))
                
              ],
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
    )
    );
  }
}