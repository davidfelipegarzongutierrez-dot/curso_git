import 'package:flutter/material.dart';

void main() {
  runApp(const ActividadContainerCorregido());
}

class ActividadContainerCorregido extends StatelessWidget {
  const ActividadContainerCorregido({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Corrección: Errores Resueltos")),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // ✅ CORRECCIÓN 1: color dentro de decoration
                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Corregido 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 30),

                // ✅ CORRECCIÓN 2: padding en lugar de margin (según la intención)
                Container(
                  padding: const EdgeInsets.all(30),
                  width: 200,
                  height: 80,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text(
                    "Corregido 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 30),

                // ✅ CORRECCIÓN 3: el texto está centrado con alignment
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.orange,
                  alignment: Alignment.center,
                  child: const Text(
                    "Corregido 3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 30),

                // ✅ CORRECCIÓN 4: eliminar containers innecesarios
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("Corregido 4"),
                ),

                const SizedBox(height: 30),

                // ✅ CORRECCIÓN 5: Transform aplicado solo al hijo
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: 0.3,
                    child: const Text(
                      "Corregido 5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ✅ CORRECCIÓN 6: Container con tamaño definido
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text(
                    "Corregido 6",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
