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
            const SizedBox(height: 30),

            // Row layout
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Left images
                Column(
                  children: [
                    Image.asset('assets/pft.png', width: 300, height: 300),
                    const SizedBox(height: 15),
                    Image.asset('assets/pft1.png', width: 300, height: 300),
                  ],
                ),

                const SizedBox(width: 100),

                // Buttons
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
                      child: const Text("Explore 1st Floor"),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Explore 2nd Floor"),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Explore 3rd Floor"),
                    ),
                  ],
                ),

                const SizedBox(width: 30),

                // Right images
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

// First Floor Main Screen
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Choose your starting point",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Buttons linking to 11 new screens
                buildNavButton(context, "Restaurant", const RestaurantScreen()),
                buildNavButton(context, "Center for Engineering Education",
                    const CenterForEngineeringEducationScreen()),
                buildNavButton(
                    context, "Auditoriums", const AuditoriumsScreen()),
                buildNavButton(
                    context, "Cambre Atrium", const CambreAtriumScreen()),
                buildNavButton(context, "1200", const Room1200Screen()),
                buildNavButton(context, "1202", const Room1202Screen()),
                buildNavButton(context, "Sustainable Living Lab",
                    const SustainableLivingLabScreen()),
                buildNavButton(
                    context, "Zone 1100 Part 1", const Zone1100Part1Screen()),
                buildNavButton(
                    context, "Zone 1100 Part 2", const Zone1100Part2Screen()),
                buildNavButton(
                    context, "1220s and Bathroom", const Room1220sScreen()),
                buildNavButton(context, "The Commons", const CommonsScreen()),
              ],
            ),
            const SizedBox(width: 50),
            Image.asset('assets/pft1st.png', width: 700, height: 700),
          ],
        ),
      ),
    );
  }

  // Helper method for buttons
  Widget buildNavButton(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          textStyle: const TextStyle(fontSize: 18),
        ),
        child: Text(title),
      ),
    );
  }
}

// Template for all 11 pages
class GenericScreen extends StatelessWidget {
  final String title;
  final List<Widget>? buttons; // Accepts navigation buttons

  const GenericScreen({super.key, required this.title, this.buttons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to $title",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            if (buttons != null) ...buttons!,
          ],
        ),
      ),
    );
  }
}

// Creating each of the 11 screens
class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const GenericScreen(title: "Restaurant");
  }
}

class CenterForEngineeringEducationScreen extends StatelessWidget {
  const CenterForEngineeringEducationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const GenericScreen(title: "Center for Engineering Education");
  }
}

class AuditoriumsScreen extends StatelessWidget {
  const AuditoriumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Auditoriums",
      buttons: [
        NavButton(context, "➡️", const Room1200Screen()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(context, "↗️", const Room1202Screen()),
            NavButton(context, "⬆️", const Zone1100Part1Screen()),
          ],
        ),
      ],
    );
  }
}

class CambreAtriumScreen extends StatelessWidget {
  const CambreAtriumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Cambre Atrium",
      buttons: [
        NavButton(context, "⬆️",
            const SustainableLivingLabScreen()), // Up to Sustainable Living Lab
        NavButton(context, "⬇️",
            const Zone1100Part2Screen()), // Down to Zone 1100 Part 2
      ],
    );
  }
}

class Room1200Screen extends StatelessWidget {
  const Room1200Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Room 1200",
      buttons: [
        NavButton(context, "⬆️", const Room1202Screen()),
        NavButton(context, "⬅️", const AuditoriumsScreen()),
      ],
    );
  }
}

class Room1202Screen extends StatelessWidget {
  const Room1202Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Room 1202",
      buttons: [
        NavButton(context, "⬆️", const Zone1100Part1Screen()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(context, "⬅️", const AuditoriumsScreen()),
            NavButton(
                context, "➡️", const CenterForEngineeringEducationScreen()),
          ],
        ),
        NavButton(context, "⬇️", const Room1200Screen()),
      ],
    );
  }
}

class SustainableLivingLabScreen extends StatelessWidget {
  const SustainableLivingLabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const GenericScreen(title: "Sustainable Living Lab");
  }
}

class Zone1100Part1Screen extends StatelessWidget {
  const Zone1100Part1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Zone 1100 Part 1",
      buttons: [
        NavButton(context, "⬆️", const Zone1100Part2Screen()), // Up to Part 2
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(context, "⬇️ Left",
                const AuditoriumsScreen()), // Down left to Auditoriums
            NavButton(context, "⬇️ Right",
                const Room1202Screen()), // Down right to 1202
          ],
        ),
      ],
    );
  }
}

class Zone1100Part2Screen extends StatelessWidget {
  const Zone1100Part2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: "Zone 1100 Part 2",
      buttons: [
        NavButton(
            context, "⬆️", const CambreAtriumScreen()), // Up to Cambre Atrium
        NavButton(context, "⬇️", const Zone1100Part1Screen()), // Down to Part 1
      ],
    );
  }
}

class Room1220sScreen extends StatelessWidget {
  const Room1220sScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const GenericScreen(title: "1220s and Bathroom");
  }
}

class CommonsScreen extends StatelessWidget {
  const CommonsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const GenericScreen(title: "The Commons");
  }
}

Widget NavButton(BuildContext context, String arrow, Widget screen) {
  return ElevatedButton(
    onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen)),
    child: Text(arrow, style: const TextStyle(fontSize: 30)),
  );
}
