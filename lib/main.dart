import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void counter() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 4, 173),
        centerTitle: true,
        title: Text(
          "وَٱصْبِرْ لِحُكْمِ رَبِّكَ فَإِنَّكَ بِأَعْيُنِنَا ۖ وَسَبِّحْ بِحَمْدِ رَبِّكَ حِينَ تَقُومُ",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 140, 221, 204),
      body: Center(
        // Wrap the Column in Center to center the content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.50,
              height: MediaQuery.of(context).size.width / 1.50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 4, 173),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 9),
                    color: Colors.white.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(
                    count.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            Transform.translate(
              offset: Offset(1, 0),
              child: Container(
                width: 120,
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 7, 4, 173),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      color: Colors.white.withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => counter(),
                      child: Icon(
                        Icons.add,
                        size: 33,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Color.fromARGB(255, 64, 216, 4),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => reset(),
                      child: Icon(
                        Icons.refresh,
                        size: 33,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
