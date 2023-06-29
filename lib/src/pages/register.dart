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
                Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 224, 75, 90),
                  Color.fromARGB(255, 91, 48, 90),])
              ),
              
        child: ListView(    
          children:<Widget> [
            /*Text(
                      'Registro',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),*/
            
            Center(),
            

            Center(
              child: Padding(padding: EdgeInsets.all(50.0),
              child: Column(
            children: [

              CircleAvatar(
                      radius: 180.0,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
              SizedBox(height: 25.0),
             TextField(

                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                        labelText: 'Apodo',
                        hintText: 'Ingrese su apodo',
                        helperText: '',
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 91, 48, 90),
                        filled: true,
                        
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
              TextField(

                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 1)
                        ),
                        labelText: 'Contraseña',
                        hintText: 'Ingrese su contraseña',
                        helperText: '',
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Color.fromARGB(255, 91, 48, 90),
                        filled: true,
                        
                      ),
                    ),

              SizedBox(height: 16.0),
              SizedBox(
                 width: 200,
                height: 50.0,
                child: ElevatedButton.icon(
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
                  icon: Icon(Icons.app_registration),
                  label: Text('Registrarse'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  ),
                ),
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