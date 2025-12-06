import 'package:flutter/material.dart';
import 'package:uniqlo/Model/uniqlo.dart';


void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Uniqlo Shop'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 52, 109),
        title: Text(widget.title),
      ),
      body: SafeArea(child: Container(
        child: ListView.builder(
          itemCount: Uniqlo.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return buildUniqloCard(Uniqlo.samples[index]);
          },
        )),
      ),
    );
  }


Widget buildUniqloCard(Uniqlo uniqlo) {
  return Card(
    child: Column(
      children: <Widget>[
        Image(image: AssetImage(uniqlo.imgUrl)),
        Text(uniqlo.imgTitle),
      ],
    ),
  );
}
}