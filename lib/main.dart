import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqlo/Model/uniqlo.dart';
import 'package:uniqlo/uniqlo_detail.dart';

const primaryColor = Color.fromARGB(255, 0, 170, 255);

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uniqlo Calculator',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,

        textTheme: GoogleFonts.oswaldTextTheme(),

        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          centerTitle: true,
          titleTextStyle: GoogleFonts.oswald(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Uniqlo Calculator'),
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
        title: Text(widget.title), 
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Uniqlo.samples.length,
          itemBuilder: (context, index) {
            final uniqlo = Uniqlo.samples[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => UniqloDetail(uniqlo: uniqlo),
                  ),
                );
              },
              child: buildUniqloCard(uniqlo),
            );
          },
        ),
      ),
    );
  }
}

Widget buildUniqloCard(Uniqlo uniqlo) {
  return Card(
    color: Colors.white,
    elevation: 4,
    margin: const EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            uniqlo.imgTitle,
            style: GoogleFonts.oswald(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              uniqlo.imgUrl,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: double.infinity,
                height: 180,
                color: Colors.grey[200],
                child: const Icon(Icons.broken_image, size: 48, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
