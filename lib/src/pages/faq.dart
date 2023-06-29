import 'package:flutter/material.dart';
import 'package:pi_flutter/src/widgets/footer.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 75, 90),
        title: Text('Preguntas frecuentes'),
      ),
      body: ListView(
        children: [
          FAQItem(
            question: '¿Cómo registrar eventos?',
            answer: 'Para registrarte en el sitio, ve a la página de inicio y haz clic en el botón "Registrarse". Luego, sigue los pasos proporcionados para completar el proceso de registro.',
          ),
          SizedBox(height: 16.0),
          FAQItem(
            question: '¿Cómo registrar maestros?',
            answer: 'Si olvidaste tu contraseña, ve a la página de inicio y haz clic en el enlace "¿Olvidaste tu contraseña?". Se te proporcionarán instrucciones para restablecer tu contraseña.',
          ),
          SizedBox(height: 16.0),
          FAQItem(
            question: '¿Cómo registro materias?',
            answer: 'Puedes contactar a nuestro servicio de atención al cliente llamando al número XXX-XXXX o enviando un correo electrónico a [correo electrónico de atención al cliente]. Estamos disponibles para ayudarte de lunes a viernes de 9:00 a.m. a 5:00 p.m.',
          ),
          // Agrega más elementos FAQItem según sea necesario
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Center(
            child:Footer(),
          ),
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: Text(question),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Text(answer),
          ),
        ],
      ),
    );
  }
}
