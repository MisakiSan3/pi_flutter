import 'package:pi_flutter/src/models/subject.model.dart';

class TeacherModel {
  final int id;
  final String nombre_p;
  final String apellido_p;
  final String email;
  final String telf;
  final SubjectModel asignatura;


  TeacherModel({required this.id,required this.nombre_p,required this.apellido_p,required this.telf,required this.email,required this.asignatura});
}