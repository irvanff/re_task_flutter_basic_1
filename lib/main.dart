import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MyTrav'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Null;
            },
          ),
          IconButton(
            icon: const Icon(Icons.dehaze_rounded),
            onPressed: () {
              Null;
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/paket.jpg'),
              ),
            ),
          ),
          const Center(
            child: Text(
              'Wisata',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      const Image(
                        height: 200.0,
                        width: 200.0,
                        image: AssetImage('assets/images/nusapenida.jpg'),
                      ),
                      Positioned(
                        left: 60.0,
                        top: 135.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Null;
                          },
                          child: const Text("Details"),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'Nusa Penida',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        Text('Ini adalah nusa penida '),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
