import 'package:intl/intl.dart';
import 'package:pi_flutter/src/models/category.model.dart';
import 'package:pi_flutter/src/models/teacher.model.dart';

class EventModel {
  final int id;
  final String title;
  final DateFormat start;
  final DateFormat end;
  final String description;
  final TeacherModel maestro;
  final CategoryModel categoria;
  
  EventModel({required this.id,required this.title,required this.start,required this.end,required this.description,required this.maestro,required this.categoria});
}