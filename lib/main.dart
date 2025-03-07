import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abby and Thomas\' Tour of PFT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abby and Thomas' Tour of PFT"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcome Message
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Welcome to the GREATEST Patrick F. Taylor Hall self-guided tour of all time",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30), // More spacing for better alignment

            // Row containing two images on the left, buttons in the center, and two images on the right
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Left-side images
                Column(
                  children: [
                    Image.asset('assets/pft.png', width: 300, height: 300),
                    const SizedBox(height: 15),
                    Image.asset('assets/pft1.png', width: 300, height: 300),
                  ],
                ),

                const SizedBox(width: 100), // Space between images and buttons

                // Buttons in the center
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstFloorScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text("Explore 1st Floor"),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to the 2nd floor screen
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text("Explore 2nd Floor"),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to the 3rd floor screen
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text("Explore 3rd Floor"),
                    ),
                  ],
                ),

                const SizedBox(
                    width: 30), // Space between buttons and right images

                // Right-side images
                Column(
                  children: [
                    Image.asset('assets/pft2.png', width: 300, height: 300),
                    const SizedBox(height: 15),
                    Image.asset('assets/pft3.png', width: 300, height: 300),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// First Floor Screen
class FirstFloorScreen extends StatelessWidget {
  const FirstFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Floor Main Screen"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Buttons Column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Choose your starting point",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to Panera section
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text("Panera"),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to Center for Engineering Education
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text("Center for Engineering Education"),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to Auditoriums section
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text("Auditoriums"),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to Cambre Atrium
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text("Cambre Atrium"),
                ),
              ],
            ),
            const SizedBox(width: 50), // Space between buttons and image
            // Right-side Image
            Image.asset('assets/pft1st.png', width: 700, height: 700),
          ],
        ),
      ),
    );
  }
}
