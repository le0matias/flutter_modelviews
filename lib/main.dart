import 'package:flutter/material.dart';
import 'package:flutter_modelviews/person_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final store = PersonStore();
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC model'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: store.validatePersonHeight,
                controller: heightController,
                decoration: const InputDecoration(hintText: 'Insira sua altura'),
              ),
              AnimatedBuilder(
                  animation: store,
                  builder: (_, __) {
                    return Text(store.heightResult);
                  }),
              TextFormField(
                onChanged: store.validatePersonWeight,
                controller: weightController,
                decoration: const InputDecoration(hintText: 'Insira seu peso'),
              ),
              AnimatedBuilder(
                  animation: store,
                  builder: (_, __) {
                    return Text(store.weightResult);
                  }),
              ElevatedButton(
                child: const Text('Calcular IMC'),
                onPressed: () {
                  var weight = double.tryParse(weightController.text) ?? 0;
                  var height = double.tryParse(heightController.text) ?? 0;
                  var result = weight / (height * height);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('$result'),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
