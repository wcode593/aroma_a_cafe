import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aroma a Café',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aroma a Café'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '☕ ¡Bienvenidos al mejor Café del Mundo! ☕',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Despierta tus sentidos con el café celestial, la experiencia es inigualable, ven a experimentar nuevas sensaciones y texturas.',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            Image.asset('assets/coffee2.jpg'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                          icon: Image.asset('assets/cafeteria.jpg'),
                          title: const Center(
                              child: Text("Aroma a Café",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.brown))),
                          backgroundColor:
                              const Color.fromARGB(255, 253, 242, 249),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          content: const Text(
                            "La vida es como una taza de café. Todo está en cómo la preparas, pero sobre todo en cómo te la tomas.",
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('I❤️Coffee'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 20),
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ],

                          /* actions: [
                      /* TextButton(
                        child: const Text("OK", textAlign: TextAlign.center,),
                        onPressed: () {
                          Navigator.of(context).pop();
                          }
                      ) */
                    
                    ], */
                        ));
              },
              label: const Text('Notificame'),
              icon: const Icon(BootstrapIcons.chat_square_heart),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.facebook),
            label: '@aromaCafe',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.github),
            label: 'aromaCafe',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.instagram),
            label: '@aromaCafe',
          ),
        ],
      ),
    );
  }
}
