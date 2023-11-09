import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = "Ejemplo N°1";
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCount(),
    );
  }
}

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<StatefulWidget> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Ejemplo 01',
          style: TextStyle(fontSize: 35.0, fontFamily: 'cursive'),
        ),
        backgroundColor: Color.fromARGB(134, 32, 77, 161),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 180.0,
            ),
            Text("el numero es: $_count"),
            const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/nanami.jpg'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: Color.fromARGB(134, 32, 77, 161),
        ),
      ),
      floatingActionButton: _crearBottoms(),
    );
  }

  Widget _crearBottoms() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton.extended(         
          onPressed: (() {
            _count = 0;
          }),
          hoverColor: const Color.fromARGB(134, 32, 77, 161),
          label: const Text('restore'),
          icon: Icon(Icons.restore),
          tooltip: "Poner el contador en 0",
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          
          onPressed: (() {
            _count++;
          }),
          hoverColor: Color.fromARGB(134, 32, 77, 161),
          label: const Text('add'),
          icon: Icon(Icons.add),
          tooltip: "Se incrementa el valor",
        )
      ],
    );
  }
}