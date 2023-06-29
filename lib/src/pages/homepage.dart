

import 'package:flutter/material.dart';
import 'package:pi_flutter/src/widgets/footer.dart';
import 'package:pi_flutter/src/widgets/icon_container.dart';


class HomePages extends StatefulWidget {
  
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
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
                  Color.fromARGB(255, 91, 48, 90),])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                      radius: 200.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/logo.png'),
              ),
                /*SizedBox(
                  height: 5.0,
                ),*/
                /*Text(
                    'Tu Agenda Virtual',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 50.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),*/
                /*SizedBox(
                  height: 5.0,
                ),*/
                SizedBox(
                    width: 200,
                    height: 50.0,
                    child: ElevatedButton.icon(
                     onPressed:(){
                       Navigator.pushNamed(context, '/Login');},
                       icon: Icon(Icons.login),
                       label:Text ('Iniciar Sesión'),
                       style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                        primary: Color.fromARGB(255, 0, 0, 0),),
                      ),
                  ),
                  SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  width: 200,
                height: 50.0,
                  child: ElevatedButton.icon(
                                     onPressed:(){
                   Navigator.pushNamed(context, '/Register');},
                   icon: Icon(Icons.app_registration_rounded),
                   
                   label:Text ('Registrate'),
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                    primary: Color.fromARGB(255, 0, 0, 0),),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
