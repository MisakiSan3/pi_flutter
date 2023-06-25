import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _GeneroController= TextEditingController();
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
            
            Center(),
            

            Center(
              child: Padding(padding: EdgeInsets.all(15.0),
              child: Column(
            children: [

              CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: AssetImage('assets/images/descarga.png'),
                    ),
              SizedBox(height: 25.0),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Apodo',
                  hintText: 'Ingrese tu Apodo',
                  helperText: '',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.person),
                ),
              ),

              TextField(
                controller: _emailController,
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
                controller: _passwordController,
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

              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  
                  String name = _nameController.text;
                  String lastName = _lastNameController.text;
                  String email = _emailController.text;
                  String password = _passwordController.text;

                  Navigator.pushNamed(context, '/Login');
                  
      
                  print('Nombre: $name');
                  print('Apellidos: $lastName');
                  print('Correo electrónico: $email');
                  print('Contraseña: $password');
                },
                child: Text('Registrarse'),
              ),
              InkWell(child: Text('¿Ya tienes cuenta INICIAR SESION?',
              style: TextStyle(color: Colors.white),),
              onTap: (){Navigator.pushNamed(context, '/Login');} )
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