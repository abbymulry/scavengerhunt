import 'package:flutter/material.dart'; 
import 'package:shared_preferences/shared_preferences.dart';

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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SecondFloorScreen()), // Update when SecondFloorScreen is ready
                        );
                      },
                      child: const Text("Explore 2nd Floor"),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ThirdFloorScreen()), // Now navigates to 3rd Floor!
                        );
                      },
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

class SecondFloorScreen extends StatelessWidget {
  const SecondFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Floor"),
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
                buildNavButton(context, "Bim Lab", const BimLabScreen()),
                buildNavButton(context, "ProtoLab",
                    const ProtoLabScreen()),
                buildNavButton(
                    context, "Annex/ Drilling Fluid Lab", const AnnexLabScreen()),
                buildNavButton(
                    context, "Civil Engineering Driving Simulator", const DrivingSimulatorScreen()),
                buildNavButton(
                    context, "Brookshire Student Service Suite", const BrookshireScreen()),
              ],
            ),
            const SizedBox(width: 50),
            Image.asset('assets/secondfloorlayout.jpg', width: 700, height: 700),
          ],
        ),
      ),
  }
}

class ThirdFloorScreen extends StatelessWidget {
  const ThirdFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Floor"),
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
                "Welcome to the 3rd Floor! We are not going to make you follow this whole maze, so just find the following places!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            // Navigation buttons
            buildNavButton(context, "Alfredo Room", const AlfredoScreen()),
            buildNavButton(context, "Civil & Environmental Engineering",
                const CEEScreen()),
            buildNavButton(context, "Mechanical & Industrial Engineering",
                const MIEScreen()),
            buildNavButton(
                context, "Construction Management", const CMScreen()),
            buildNavButton(context, "Electrical Engineering & Computer Science",
                const EECSScreen()),
            buildNavButton(context, "Chemical Engineering", const ChEScreen()),
            buildNavButton(context, "Elevators", const ElevatorsScreen()),
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
  final Map<String, Widget>? buttons;

  const GenericScreen({super.key, required this.title, this.buttons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Welcome to $title",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          if (buttons != null)
            ...buttons!.entries.map((entry) {
              return Align(
                alignment: _getAlignment(entry.key),
                child: entry.value,
              );
            }).toList(),
        ],
      ),
    );
  }

  Alignment _getAlignment(String position) {
    switch (position) {
      case "top":
        return Alignment.topCenter;
      case "bottom":
        return Alignment.bottomCenter;
      case "left":
        return Alignment.centerLeft;
      case "right":
        return Alignment.centerRight;
      case "topLeft":
        return Alignment.topLeft;
      case "topRight":
        return Alignment.topRight;
      case "bottomLeft":
        return Alignment.bottomLeft;
      case "bottomRight":
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }
}

// Creating each of the 11 screens
class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("restaurant_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("restaurant_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "B") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What is the 7th letter of the restaurant that you are now approaching?\n(Hint: It is the first letter of the 2nd word).",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/panera.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "​Panera Bread opened in LSU's Patrick F. Taylor Hall on August 13, 2018, offering students and faculty convenient access to freshly baked goods, soups, salads, and sandwiches. Notably, this location was the first on campus to feature kiosk ordering stations, reducing wait times and enhancing the dining experience. Its presence makes Patrick F. Taylor Hall one of the few academic buildings at LSU with an in-house dining option, providing a unique blend of academic and culinary amenities.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const Room1220sScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const CommonsScreen()),
          ),
        ],
      ),
    );
  }
}

class CenterForEngineeringEducationScreen extends StatefulWidget {
  const CenterForEngineeringEducationScreen({super.key});

  @override
  _CenterForEngineeringEducationScreenState createState() =>
      _CenterForEngineeringEducationScreenState();
}

class _CenterForEngineeringEducationScreenState
    extends State<CenterForEngineeringEducationScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("center_for_engineering_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("center_for_engineering_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CHEVRON") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center for Engineering Education"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Who is the sponsor for the center for engineering education, which is located in PFT 1269?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/chev.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "​The Chevron Center for Engineering Education, located within LSU's Patrick F. Taylor Hall, serves as a hub for enhancing engineering students' communication and technical skills. The center offers resources such as 3D printers, scanners, and a computer lab, supporting various academic projects. Additionally, it provides access to Communication-Intensive courses, study abroad opportunities through the Geaux Global Program, and guidance for students aiming to become LSU Distinguished Communicators.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const CommonsScreen()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const Room1202Screen()),
          ),
        ],
      ),
    );
  }
}

class AuditoriumsScreen extends StatefulWidget {
  const AuditoriumsScreen({super.key});

  @override
  _AuditoriumsScreenState createState() => _AuditoriumsScreenState();
}

class _AuditoriumsScreenState extends State<AuditoriumsScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("auditoriums_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("auditoriums_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TV") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auditoriums"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "On the wall on the left of the big auditorium, how can you get news on current events? (Hint: this should be two letters)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/audit.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "​Located outside the auditoriums in LSU's Patrick F. Taylor Hall, televisions display news covering politics, sports, and campus events. These screens keep students and faculty informed about current affairs and university happenings. This integration of information technology enhances the academic environment by fostering awareness and engagement within the campus community.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.topLeft,
            child: NavButton(context, "↖️", const Zone1100Part1Screen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const Room1202Screen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const Room1200Screen()),
          ),
        ],
      ),
    );
  }
}

class CambreAtriumScreen extends StatefulWidget {
  const CambreAtriumScreen({super.key});

  @override
  _CambreAtriumScreenState createState() => _CambreAtriumScreenState();
}

class _CambreAtriumScreenState extends State<CambreAtriumScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("cambre_atrium_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Congrats!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("cambre_atrium_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim() == "5") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Congrats!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cambre Atrium"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "How many tables are there in the Cambre Atrium for studying?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/cambre.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Cambre Atrium in LSU's Patrick F. Taylor Hall serves as a central connector between the original structure and a newly constructed three-story laboratory annex. Lined with 30 classrooms accommodating 30 to 150 seats each, it also houses the RoyOMartin Auditorium, which seats up to 250 people. This expansive space is one of three main common areas in the building, designed to foster student interaction and collaboration.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const SustainableLivingLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const Zone1100Part2Screen()),
          ),
        ],
      ),
    );
  }
}

class Room1200Screen extends StatefulWidget {
  const Room1200Screen({super.key});

  @override
  _Room1200ScreenState createState() => _Room1200ScreenState();
}

class _Room1200ScreenState extends State<Room1200Screen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("room1200_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1200_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "RENE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Room 1200"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What is the first name on the purple plaque that is right outside of room 1200?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/1200.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Room 1200 in LSU's Patrick F. Taylor Hall is a general-purpose classroom with a seating capacity of 150. Located within the 1200 Zone of the building, it is accessible via the North, South, and West entrances. This room is equipped with multimedia capabilities, including HDMI input, and offers features such as a microphone system, Turning Point Clicker availability upon request, and lecture capture services.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const AuditoriumsScreen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const Room1202Screen()),
          ),
        ],
      ),
    );
  }
}

class Room1202Screen extends StatefulWidget {
  const Room1202Screen({super.key});

  @override
  _Room1202ScreenState createState() => _Room1202ScreenState();
}

class _Room1202ScreenState extends State<Room1202Screen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("room1202_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1202_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "FAVRE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Room 1202"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "There is a wall of names outside of Room 1202. What is the last name of the person in the top left gold plate?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/1202.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Donor Wall (outside of Room 1202) in LSU's Patrick F. Taylor Hall is prominently located across from the RoyOMartin Auditorium within the Cambre Atrium. This installation honors the generous contributions of individual donors and industry partners who, alongside funding from the state of Louisiana, played a pivotal role in the building's renovation and expansion.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const Room1200Screen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(
                context, "➡️", const CenterForEngineeringEducationScreen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const Zone1100Part1Screen()),
          ),
        ],
      ),
    );
  }
}

class SustainableLivingLabScreen extends StatefulWidget {
  const SustainableLivingLabScreen({super.key});

  @override
  _SustainableLivingLabScreenState createState() =>
      _SustainableLivingLabScreenState();
}

class _SustainableLivingLabScreenState
    extends State<SustainableLivingLabScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("sustainable_lab_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("sustainable_lab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "BASF") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sustainable Living Lab"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Which company sponsors this lab?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/BASF.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "​The BASF Sustainable Living Laboratory, established in 2017 within LSU's Patrick F. Taylor Hall, is an innovative space promoting problem-based teaching and research focused on sustainable solutions to global challenges. Funded by a 1 million dollar donation from BASF, the lab has facilitated research projects such as developing portable water filtration systems using visible sunlight and creating new functional polymers and nanoscale composites for various applications. Notably, the lab's construction incorporated BASF products, including ceiling tiles, flooring, and wall paint, and features a state-of-the-art communication system that enables virtual participation through webcasting technology.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const CambreAtriumScreen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const Room1220sScreen()),
          ),
        ],
      ),
    );
  }
}

class Zone1100Part1Screen extends StatefulWidget {
  const Zone1100Part1Screen({super.key});

  @override
  _Zone1100Part1ScreenState createState() => _Zone1100Part1ScreenState();
}

class _Zone1100Part1ScreenState extends State<Zone1100Part1Screen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("zone1100part1_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100part1_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "VENDING") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zone 1100 Part 1"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Moving up from the previous auditorium and rooms, there is a Zone 1100 sign on the left. What is the word below 1114-1154?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/1100pt1.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Louisiana State University (LSU) offers over 300 vending machines across its campus, providing snacks, beverages, and essential academic supplies like Scantrons and bluebooks. These machines accept various payment methods, including cash, credit cards, and TigerCASH—a campus-specific currency linked to student IDs. Notable vending locations include the LSU Library, Nicholson Hall, Himes Hall, Lockett Hall lounge (3rd floor), Audubon Hall basement, Hodges Hall, J.C. Miller Hall (1st floor hallway), Stubbs Hall, Coates Hall, Chopin Hall, LSU Student Union, and the Design Building Atrium Cafe.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const Zone1100Part2Screen()),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: NavButton(context, "↙️", const AuditoriumsScreen()),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: NavButton(context, "↘️", const Room1202Screen()),
          ),
        ],
      ),
    );
  }
}

class Zone1100Part2Screen extends StatefulWidget {
  const Zone1100Part2Screen({super.key});

  @override
  _Zone1100Part2ScreenState createState() => _Zone1100Part2ScreenState();
}

class _Zone1100Part2ScreenState extends State<Zone1100Part2Screen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("zone1100part2_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100part2_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "GOOGLY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zone 1100 Part 2"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Moving up from the first sign there is another one, this one has something unique about it? (Hint: _____ eyes)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/1101pt2.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Balancing academics and personal life is a common challenge for LSU students, with experiences varying based on individual circumstances and academic paths. For example, one student noted that their freshman year in engineering 'wasn't too bad,' but acknowledged that workload and free time can differ significantly among students. To support students in achieving a healthy work-life balance, LSU offers resources such as the 'Work-Life Balance for Women in Business' course, which addresses stress management and productivity enhancement. Additionally, students like Flau'jae Johnson exemplify balancing multiple commitments, managing both academic responsibilities and a burgeoning music career.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const CambreAtriumScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const Zone1100Part1Screen()),
          ),
        ],
      ),
    );
  }
}

class Room1220sScreen extends StatefulWidget {
  const Room1220sScreen({super.key});

  @override
  _Room1220sScreenState createState() => _Room1220sScreenState();
}

class _Room1220sScreenState extends State<Room1220sScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("room1220s_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1220s_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CAPSTONE GALLERY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1220s and Bathroom"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Right before you get to the bathroom, there is a sign above your head, what is the location at the bottom left of the sign? (Hint: two words)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/bathroom.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "​Patrick F. Taylor Hall at LSU offers well-maintained restroom facilities on each floor, conveniently located near classrooms and common areas. The second-floor bathrooms are particularly noted for their cleanliness and low foot traffic, making them a preferred choice for many students.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const SustainableLivingLabScreen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const RestaurantScreen()),
          ),
        ],
      ),
    );
  }
}

class CommonsScreen extends StatefulWidget {
  const CommonsScreen({super.key});

  @override
  _CommonsScreenState createState() => _CommonsScreenState();
}

class _CommonsScreenState extends State<CommonsScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("commons_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("commons_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TAU BETA PI") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the First Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Commons"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "There is a plaque on a statue in the common area between the two sets of stairs. What is the name of the honor society on the plaque?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/commons.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Commons in LSU's Patrick F. Taylor Hall serves as the building's main gathering space, fostering collaboration and interaction among students and faculty. This atrium area features a Panera Bread café, providing convenient dining options within the academic setting. Adjacent to The Commons is the Dow Student Leadership Incubator, which supports over 40 engineering student organizations, enhancing leadership development and community engagement.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "First Floor Questions Answered: ${FirstFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(
                context, "⬇️", const CenterForEngineeringEducationScreen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const RestaurantScreen()),
          ),
        ],
      ),
    );
  }
}

Widget NavButton(BuildContext context, String arrow, Widget screen) {
  return IconButton(
    icon: Text(arrow, style: const TextStyle(fontSize: 40)),
    onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen)),
  );
}

class FirstFloorProgress {
  static int questionsAnswered = 0;
  static const int totalQuestions = 11;

  static bool isCompleted() {
    return questionsAnswered >= totalQuestions;
  }

  static void resetProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    questionsAnswered = 0;
    await prefs.clear(); // Clears all saved answers
  }
}

class AlfredoScreen extends StatefulWidget {
  const AlfredoScreen({super.key});

  @override
  _AlfredoScreenState createState() => _AlfredoScreenState();
}

class _AlfredoScreenState extends State<AlfredoScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("alfredo_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("alfredo_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alfredo Room"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/alfredo.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Congratulations you found the Alfredo room. Select the back button to go back to the main 3rd floor screen.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class CEEScreen extends StatefulWidget {
  const CEEScreen({super.key});

  @override
  _CEEScreenState createState() => _CEEScreenState();
}

class _CEEScreenState extends State<CEEScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("cee_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("cee_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Civil & Environmental Engineering"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/cee.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Department of Civil and Environmental Engineering (CEE) at Louisiana State University (LSU) offers undergraduate and graduate programs focused on structural, geotechnical, environmental, transportation, and water resources engineering. The department is known for its research in coastal sustainability, disaster resilience, and infrastructure innovation, benefiting from LSU’s proximity to the Mississippi River and Gulf Coast. CEE students gain hands-on experience through state-of-the-art labs, industry partnerships, and projects addressing real-world engineering challenges.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class MIEScreen extends StatefulWidget {
  const MIEScreen({super.key});

  @override
  _MIEScreenState createState() => _MIEScreenState();
}

class _MIEScreenState extends State<MIEScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("mie_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("mie_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mechanical & Industrial Engineering"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/mie.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Department of Mechanical & Industrial Engineering (MIE) at Louisiana State University (LSU) offers programs in mechanical engineering, industrial engineering, and petroleum engineering. The department emphasizes hands-on learning, research, and industry collaboration in areas such as manufacturing, robotics, energy systems, and supply chain optimization. MIE students benefit from advanced labs, internship opportunities, and strong connections with industry leaders to prepare for careers in engineering and technology.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class CMScreen extends StatefulWidget {
  const CMScreen({super.key});

  @override
  _CMScreenState createState() => _CMScreenState();
}

class _CMScreenState extends State<CMScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("cm_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("cm_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Construction Management"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/cm.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Construction Management (CM) Department at Louisiana State University (LSU) prepares students for leadership roles in the construction industry by combining engineering, business, and project management principles. The program emphasizes hands-on experience, technological innovation, and sustainable building practices. With strong industry connections, state-of-the-art labs, and internship opportunities, CM graduates are well-equipped for careers in construction, project management, and infrastructure development.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class EECSScreen extends StatefulWidget {
  const EECSScreen({super.key});

  @override
  _EECSScreenState createState() => _EECSScreenState();
}

class _EECSScreenState extends State<EECSScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("eecs_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("eecs_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electrical Engineering & Computer Science"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/eecs.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Division of Electrical Engineering & Computer Science (EECS) at Louisiana State University (LSU) offers cutting-edge programs in electrical engineering, computer engineering, and computer science. The division focuses on areas such as artificial intelligence, cybersecurity, embedded systems, power systems, and telecommunications. With advanced research facilities, industry partnerships, and hands-on learning opportunities, EECS prepares students for careers in rapidly evolving technological fields.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class ChEScreen extends StatefulWidget {
  const ChEScreen({super.key});

  @override
  _ChEScreenState createState() => _ChEScreenState();
}

class _ChEScreenState extends State<ChEScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("che_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("che_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chemical Engineering"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/che.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Cain Department of Chemical Engineering (ChE) at Louisiana State University (LSU) provides a strong foundation in chemical processes, materials science, and energy production. The program emphasizes hands-on research, sustainability, and industrial applications, preparing students for careers in petrochemicals, pharmaceuticals, biotechnology, and environmental engineering. With state-of-the-art labs and strong industry ties, LSU ChE graduates are well-equipped to tackle real-world engineering challenges.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class ElevatorsScreen extends StatefulWidget {
  const ElevatorsScreen({super.key});

  @override
  _ElevatorsScreenState createState() => _ElevatorsScreenState();
}

class _ElevatorsScreenState extends State<ElevatorsScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("elevators_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("elevators_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "YES") {
      setState(() {
        if (!_alreadyAnswered) {
          ThirdFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion();
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  void _checkCompletion() {
    if (ThirdFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Third Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Third Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevators"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am sure you are tired at this point. So just be honest, did you visit this area?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/elevators.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "You found the elevators! You can leave now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const ThirdFloorScreen()),
          ),
        ],
      ),
    );
  }
}

class ThirdFloorProgress {
  static int questionsAnswered = 0;
  static const int totalQuestions = 7; // Total screens for the third floor

  static bool isCompleted() {
    return questionsAnswered >= totalQuestions;
  }

  static void resetProgress() {
    questionsAnswered = 0;
    _resetStoredProgress();
  }

  static void _resetStoredProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("alfredo_answered", false);
    await prefs.setBool("cee_answered", false);
    await prefs.setBool("mie_answered", false);
    await prefs.setBool("cm_answered", false);
    await prefs.setBool("eecs_answered", false);
    await prefs.setBool("che_answered", false);
    await prefs.setBool("elevators_answered", false);
  }
}

class BimLabScreen extends StatefulWidget {
  const BimLabScreen({super.key});

  @override
  _BimLabScreenState createState() => _BimLabScreenState();
}

class _BimLabScreenState extends State<BimLabScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("bimlab_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("bimlab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "2348 and construction management") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Second Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Second Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstFloorScreen()),
                );
              },
              child: const Text("Go to 1st Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bim Lab"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Bim Lab? What major commonly uses it?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/bimlab.jpg', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The lab space consists of 44 4K displays that allow for three-dimensional and computer-generated views of building plans. This allows students and faculty to virtually visit building sites to make assessments, alter plans, and consider concerns like safety and maintenance..​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Second Floor Questions Answered: ${SecondFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const ProtoLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const AnnexLabScreen()),
          ),
        ],
      ),
    );
  }
}

class ProtoLabScreen extends StatefulWidget {
  const ProtoLabScreen({super.key});

  @override
  _ProtoLabScreenState createState() => _ProtoLabScreenState();
}

class _ProtoLabScreenState extends State<ProtoLabScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("protolab_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("protolab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "2272 and electrical engineering") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Second Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Second Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstFloorScreen()),
                );
              },
              child: const Text("Go to 1st Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proto Lab"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Proto Lab? What major commonly uses it?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/protolab.jpg', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "This space is used by students to fabricate circuit boards and create device prototypes.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Second Floor Questions Answered: ${SecondFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬇️", const BimLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const AnnexLabScreen()),
          ),
        ],
      ),
    );
  }
}


class AnnexLabScreen extends StatefulWidget {
  const AnnexLabScreen({super.key});

  @override
  _AnnexLabScreenState createState() => _AnnexLabScreenState();
}

class _AnnexLabScreenState extends State<AnnexLabScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("annexlab_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("annexlab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "2147 and chemical engineering") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Second Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Second Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstFloorScreen()),
                );
              },
              child: const Text("Go to 1st Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Annex/ Drilling Fluid Lab"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Drilling Fluids Lab? What major commonly uses it?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/drillingfluidlab.jpg', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Petroleum engineers use many different methods and types of equipment to measure and adjust drilling fluids including mud balances, filter presses, and viscometers. This lab provides a space for students to gain hands-on experience with this type of equipment so they are well-prepared for work in the field..​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Second Floor Questions Answered: ${SecondFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬇️", const DrivingSimulatorScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬆️", const ProtoLabScreen()),
          ),
        ],
      ),
    );
  }
}

 class DrivingSimulatorScreen extends StatefulWidget {
  const DrivingSimulatorScreen({super.key});

  @override
  _DrivingSimulatorScreenState createState() => _DrivingSimulatorScreenState();
}

class _DrivingSimulatorScreenState extends State<DrivingSimulatorScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("drivingsimulator_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("drivingsimulator_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "2215 and civil engineering") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Second Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Second Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstFloorScreen()),
                );
              },
              child: const Text("Go to 1st Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Driving Simulator Lab"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Driving Simulator Lab? What major commonly uses it?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/drivingsimulator.jpg', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Civil Engineering Driving Simulator Laboratory allows students and faculty to research driving behaviors and traffic..​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Second Floor Questions Answered: ${SecondFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬇️", const BrookshireScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬆️", const BimLabScreen()),
          ),
        ],
      ),
    );
  }
}

class BrookshireScreen extends StatefulWidget {
  const BrookshireScreen({super.key});

  @override
  _BrookshireScreenState createState() => _BrookshireScreenState();
}

class _BrookshireScreenState extends State<BrookshireScreen> {
  final TextEditingController _answerController = TextEditingController();
  String _message = "";
  bool _isCorrect = false;
  bool _alreadyAnswered = false;

  @override
  void initState() {
    super.initState();
    _loadAnswerState();
  }

  // Load answer state from SharedPreferences
  void _loadAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? answered = prefs.getBool("brookshire_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct!";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("brookshire_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "2228 and all engineering majors") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct!";
      });

      _checkCompletion(); // Check if all 11 questions are answered
    } else {
      setState(() {
        _isCorrect = false;
        _message = "Try again.";
        _answerController.clear();
      });
    }
  }

  // Check if all first floor questions are completed
  void _checkCompletion() {
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

  // Completion pop-up
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Second Floor Completed! 🎉"),
          content: const Text(
              "You've completed all the questions for the Second Floor!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstFloorScreen()),
                );
              },
              child: const Text("Go to 1st Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Restart"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brookshire Student Service Suite"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Student Servuce Suite? What major commonly uses it?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                if (!_isCorrect) ...[
                  TextField(
                    controller: _answerController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your answer",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _checkAnswer,
                    child: const Text("Submit"),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/brookshire.jpg', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Office of Student Services provides many resources, to help with things like changing majors, adding a minor, and verifying how course credits have transferred from other institutions..​",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Second Floor Questions Answered: ${SecondFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Restore navigation arrows
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬇️", const DrivingSimulatorScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬆️", const AnnexLabScreen()),
          ),
        ],
      ),
    );
  }
}

class SecondFloorProgress {
  static int questionsAnswered = 0;
  static const int totalQuestions = 5; // Total screens for the third floor

  static bool isCompleted() {
    return questionsAnswered >= totalQuestions;
  }

  static void resetProgress() {
    questionsAnswered = 0;
    _resetStoredProgress();
  }

  static void _resetStoredProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("bimlab_answered", false);
    await prefs.setBool("protolab_answered", false);
    await prefs.setBool("annexlab_answered", false);
    await prefs.setBool("drivingsimulator_answered", false);
    await prefs.setBool("brookshire_answered", false);
  }
}
