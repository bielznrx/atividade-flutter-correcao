import 'package:flutter/material.dart';
import 'perfil_screen.dart';
import 'cursos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            const Text(
              'Bem-vindo ao Portal',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Escolha uma opção abaixo:'),
            Row(
              children: [
                Container(
                  width: 220,
                  height: 120,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Meu Perfil'),
                  ),
                ),
                Container(
                  width: 220,
                  height: 120,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Meus Cursos'),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PerfilScreen(),
                  ),
                );
              },
              child: const Text('ABRIR PERFIL'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CursosScreen(),
                  ),
                );
              },
              child: const Text('ABRIR CURSOS'),
            ),
          ],
        ),
      ),
    );
  }
}
