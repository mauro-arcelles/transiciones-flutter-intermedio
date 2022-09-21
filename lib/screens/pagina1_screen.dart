import 'package:flutter/material.dart';
import 'package:transiciones_app/screens/pagina2_screen.dart';

class Pagina1Screen extends StatelessWidget {
  const Pagina1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina1Screen'),
      ),
      body: const Center(
        child: Text('Pagina1Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
        child: const Icon(Icons.access_time),
      ),
    );
  }

  Route<Object?> _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Pagina2Screen(),
      // transitionDuration: const Duration(milliseconds: 2000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        // return SlideTransition(
        //   position: Tween<Offset>(begin: const Offset(0.5, 1), end: Offset.zero).animate(curvedAnimation),
        //   child: child,
        // );

        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
