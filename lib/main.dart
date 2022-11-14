import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 5'),
        centerTitle: true,
        
      ),
      body: Row(
        children: [
         Expanded(
           child: Container(
                height: double.infinity,
                color: const Color.fromARGB(55, 255, 221, 218),
                child: const Center(
                  child: 
                      Text(
                        'Edad:\n23',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(186, 0, 0, 0),
                          fontSize: 45.0,
                          fontFamily: 'BabyPanda',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ),
            ),
         ),
          Expanded(
            flex: 2,
            child: Container(
                height: double.infinity,
                color: const Color.fromARGB(10, 40, 82, 232),
                child: Center(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                  
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.cyan.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color:  const Color.fromARGB(180, 22, 22, 22),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage('assets/avatar.png'),
                            )
                          ),
                        ),
                        const Text(
                          'Oscar \nChavesta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 23, 23),
                            fontSize: 38.0,
                            fontFamily: 'BabyPanda',
                            fontWeight: FontWeight.normal,
                          )
                        ),
                        const Text(
                          '''


Desarrollador de software con
experiencia en diseño,instalación, 
pruebas y mantenimiento de sistemas
de software. Dominio de varias 
plataformas, lenguajes y sistemas 
integrados. Experiencia en las 
herramientas y procedimientos de 
desarrollo más vanguardistas. 
Capaz de autogestión eficaz en 
proyectos independientes. Buenas 
habilidades de colaboración dentro 
de un equipo productivo.
                          ''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 23, 23),
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          )
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}