import 'package:flutter/material.dart';

class Pagina2Screen extends StatelessWidget {
  const Pagina2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina2Screen'),
      ),
      backgroundColor: Colors.green,
      body: const Center(
        child: Text('Pagina2Screen'),
      ),
    );
  }
}
