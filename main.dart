import 'package:flutter/material.dart';

void main() {
  runApp(const ActividadContainer());
}

class ActividadContainer extends StatelessWidget {
  const ActividadContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Actividad: Encuentra los Errores")),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // ❌ ERROR 1: Usar color + decoration al mismo tiempo
                // PISTA: Si usas decoration, no puedes usar color fuera.
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.blue, // ❌
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(child: Text("Error 1")),
                ),

                const SizedBox(height: 30),

                // ❌ ERROR 2: Confusión entre margin y padding
                // PISTA: ¿Querías espacio DENTRO o FUERA del container?
                Container(
                  margin: const EdgeInsets.all(30), // ❌ ¿Era padding?
                  width: 200,
                  height: 80,
                  color: Colors.green,
                  child: const Text("Error 2"),
                ),

                const SizedBox(height: 30),

                // ❌ ERROR 3: El texto NO está centrado
                // PISTA: ¿Qué propiedad del Container controla la alineación?
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.orange,
                  child: const Text("Error 3"), // ❌ No está centrado
                ),

                const SizedBox(height: 30),

                // ❌ ERROR 4: Sobreuso de Containers innecesarios
                // PISTA: uno de estos Containers se puede eliminar sin problema.
                Container(
                  child: Container(
                    child: Container(
                      child: const Text("Error 4"), // ❌ sobreuso
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ❌ ERROR 5: Transform aplicado al Container entero
                // PISTA: ¿la intención era transformar SOLO el texto?
                Container(
                  transform: Matrix4.rotationZ(0.3), // ❌
                  width: 200,
                  height: 80,
                  color: Colors.purple,
                  child: const Text("Error 5"),
                ),

                const SizedBox(height: 30),

                // ❌ ERROR 6: Container invisible sin tamaño ni hijo
                // PISTA: ¿por qué no se ve? 🤔
                Container(
                  color: Colors.red, // ❌ no aparece en pantalla
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
