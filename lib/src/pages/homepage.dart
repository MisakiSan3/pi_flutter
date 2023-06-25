

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
                  Color.fromARGB(255, 77, 55, 201),
                  Color.fromARGB(255, 27, 27, 27),])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('assets/images/descarga.png'),
              ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                    'Bienvenido a Kuya Yana,Usuario T800',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                    width: 300,
                    height: 50.0,
                    child: ElevatedButton(
                     onPressed:(){
                       Navigator.pushNamed(context, '/Login');},
                       child:Text ('Iniciar Sesión'),
                       style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 85, 54, 224),),
                      ),
                  ),
                  SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  width: 300,
                height: 50.0,
                  child: ElevatedButton(
                                     onPressed:(){
                   Navigator.pushNamed(context, '/Register');},
                   child:Text ('No tienes cuenta '),
                   style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 85, 54, 224),),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
