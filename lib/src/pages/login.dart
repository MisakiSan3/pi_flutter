import 'package:flutter/material.dart';

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
                  Color.fromARGB(255, 77, 55, 201),
                  Color.fromARGB(255, 27, 27, 27),])),
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),

                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: AssetImage('assets/images/descarga.png'),
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
                        labelText: 'Correo electrónico',
                        hintText: 'Ingrese su correo electrónico',
                        helperText: '',
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.email),
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
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),

                    Divider(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50.0,
                      child: ElevatedButton(
                       onPressed:(){
                         Navigator.pushNamed(context, '/Servicios');},
                         child:Text ('Iniciar Sesión'),
                         style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 85, 54, 224),),
                        ),
                    ),
                      Divider(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50.0,
                      child: ElevatedButton.icon(
                       onPressed:(){
                         Navigator.pushNamed(context, '/Servicios');},
                         icon: Icon(Icons.mail),
                         label:Text ('Ingresar con Google',),
                         style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 170, 170, 170),
                          onPrimary: Colors.black
                         ),
                        ),
                    ),
                      
                      Divider(
                      height: 20.0,
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
            )
          ],
        ),
      ),
    );
  }
}