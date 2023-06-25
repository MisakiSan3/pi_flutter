import 'package:flutter/material.dart';
import 'package:pi_flutter/src/widgets/footer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'navbar.dart';
import 'package:pi_flutter/src/widgets/footer.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Color.fromARGB(255, 77, 55, 201),
      ),
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              TableCalendar(focusedDay: DateTime.now(),
               firstDay: DateTime.utc(2010, 10, 16), lastDay: DateTime.utc(2030, 3, 14)),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 85, 54, 224),),
              onPressed:(){
                Navigator.popAndPushNamed(context, '/EventsForm');},
                child:Text ('Agregar'),
             ),
            ],
          ),
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