import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      
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
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    /*Text(
                      'Login',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),*/

                    CircleAvatar(
                      radius: 150.0,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    
                    Text(
                      'Email',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 255, 255, 255),
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
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Color.fromARGB(255, 91, 48, 90),
                        filled: true,
                        
                      ),
                    ),

                    SizedBox(
                      child: Text(
                        'Contraseña', 
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),

                    TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(fontWeight: FontWeight.w600),
                  hintText: 'Ingrese su contraseña',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.password_outlined),
                  prefixIconColor: Color.fromARGB(255, 91, 48, 90),
              
                ),
                obscureText: true,
              ),

                   /* Divider(
                      height: 20.0,
                    ),*/
                    SizedBox(
                      width: 200,
                      height: 50.0,
                      child: ElevatedButton.icon(
                       onPressed:(){
                         Navigator.pushNamed(context, '/Servicios');},
                         icon: Icon(Icons.login),
                         label:Text ('Iniciar Sesión'),
                         style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                          primary: Color.fromARGB(255, 0, 0, 0),),
                        ),
                    ),
                    SizedBox(
                      height: 15.0,
                      ),
                     /* Divider(
                      height: 20.0,
                    ),*/
                    SizedBox(
                      width: 200,
                      height: 50.0,
                      child: ElevatedButton.icon(
                       onPressed:(){
                         Navigator.pushNamed(context, '/Servicios');},
                         icon: FaIcon(FontAwesomeIcons.google,
                         color: Colors.white,
                         size: 18,),
                         label:Text ('Ingresar con Google',),
                         style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                          primary: Color.fromARGB(255, 0, 0, 0),
                          onPrimary: const Color.fromARGB(255, 255, 255, 255)
                         ),
                        ),
                    ),
                      
                    SizedBox(
                      height: 15.0,
                      ),
                      SizedBox(
                        width:200,
                      height: 50.0,
                        child: ElevatedButton.icon(
                                           onPressed:(){
                         Navigator.pushNamed(context, '/Register');},
                         icon: Icon(Icons.app_registration),
                         label:Text ('No tienes cuenta '),
                         style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                          primary: Color.fromARGB(255, 0, 0, 0),),
                        ),
                      ),
                        
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}