import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Color.fromARGB(255, 204, 203, 203),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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