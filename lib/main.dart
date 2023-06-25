import 'package:flutter/material.dart';
import 'package:pi_flutter/src/pages/calendar.dart';
import 'package:pi_flutter/src/pages/events_form.dart';
import 'package:pi_flutter/src/pages/faq.dart';
import 'package:pi_flutter/src/pages/homepage.dart';
import 'package:pi_flutter/src/pages/login.dart';
import 'package:pi_flutter/src/pages/qr_reader.dart';
import 'package:pi_flutter/src/pages/subjects.dart';
import 'package:pi_flutter/src/pages/teacher_form.dart';
import 'package:pi_flutter/src/pages/page404.dart';
import 'package:pi_flutter/src/pages/profile.dart';
import 'package:pi_flutter/src/pages/register.dart';
import 'package:pi_flutter/src/pages/servicios.dart';
import 'package:pi_flutter/src/pages/teachers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes={
    '/Home':(context) => HomePages(),
    '/Calendar':(context) => CalendarPage(),
    '/Login':(context) => LoginPage(),
    '/Register':(context) => RegisterPage(),
    '/TeacherForm':(context) => TeacherForm(),
    '/Servicios':(context) => ServiciosPages(),
    '/Profile': (context) => ProfilePage(),
    '/teachers': (context) => TeachersPage(),
    '/Subjects': (context) => SubjectsPage(),
    '/EventsForm': (context) => EventsForm(),
    '/Qr': (context) => QrReaderPage(),
    '/FAQ': (context) => FAQPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/Home',
      routes:_routes,
      onGenerateRoute :(settings){
        return MaterialPageRoute(builder : (context)=>Page404(),);
      }

      //home: HomePages()
    );
  }
}