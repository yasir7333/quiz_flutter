import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Exercise3(),
    );
  }
}

// ===================== تمرين 1: صورة وتحتها نص، وسط الشاشة =====================
class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تمرين 1')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/image1.jpg',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 15),
              const Text(
                'هذا نص وصفي يظهر تحت الصورة في المنتصف.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ===================== تمرين 2: ثلاث صور جنب بعض =====================
class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تمرين 2')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Image.asset('assets/images/image2.jpg',
                  height: 180, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Image.asset('assets/images/image3.jpg',
                  height: 180, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Image.asset('assets/images/image4.jpg',
                  height: 180, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================== تمرين 3: ثلاث صور فوق بعض =====================
class Exercise3 extends StatelessWidget {
  const Exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تمرين 3')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/image1.jpg',
                width: double.infinity, height: 150, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Image.asset('assets/images/image2.jpg',
                width: double.infinity, height: 150, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Image.asset('assets/images/image3.jpg',
                width: double.infinity, height: 150, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}

// ===================== تمرين 4: أربع صور 2×2 =====================
class Exercise4 extends StatelessWidget {
  const Exercise4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تمرين 4')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Image.asset('assets/images/image1.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/image3.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/image4.jpg', fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
