import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Color.fromARGB(255, 80, 43, 79),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        /* children: [
          FooterItem(
            icon: Icons.home,
            
            
            label: 'Inicio',
            
            onPressed: () {
              // Navegar a la página de inicio
              Navigator.pushNamed(context, '/Servicios');
            },
          ),
          FooterItem(
            icon: Icons.calendar_month,
            label: 'Calendario',
            onPressed: () {
              // Realizar alguna acción relacionada con el calendario
              Navigator.pushNamed(context, '/Calendar');
            },
          ),
          FooterItem(
            icon: Icons.person,
            label: 'Perfil',
            onPressed: () {
              // Realizar alguna acción relacionada con el perfil del usuario
              Navigator.pushNamed(context, '/Profile');
            },
          ),
        ],*/
        children: [
          new Container(
              height: 45.0,
              width: 45.0,
              child: Center(
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // half of height and width of Image
                  ),
                  child: IconButton(
                    icon: new Icon(
                      Icons.home,
                      size: 20.0,
                    ),
                    color: Color.fromARGB(255, 91, 48, 90),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Servicios');
                    },
                  ),
                ),
              )),
          new Container(
              height: 45.0,
              width: 45.0,
              child: Center(
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // half of height and width of Image
                  ),
                  child: IconButton(
                    icon: new Icon(
                      Icons.calendar_month,
                      size: 20.0,
                    ),
                    color: Color.fromARGB(255, 91, 48, 90),
                    onPressed: () {
                      // Realizar alguna acción relacionada con el calendario
              Navigator.pushNamed(context, '/Calendar');
                    },
                  ),
                ),
              )),
          new Container(
              height: 45.0,
              width: 45.0,
              child: Center(
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // half of height and width of Image
                  ),
                  child: IconButton(
                    icon: new Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 20.0,
                    ),
                    color: Color.fromARGB(255, 91, 48, 90),
                    onPressed: () {
                      // Realizar alguna acción relacionada con el perfil del usuario
              Navigator.pushNamed(context, '/Profile');
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const FooterItem({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(height: 4.0),
          Text(label),
        ],
      ),
    );
  }
}
