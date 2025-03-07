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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to the Second Floor!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Return to Home"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to 3rd Floor"),
            ),
          ],
        ),
      ),
    );
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
            const Text(
              "Welcome to the Third Floor!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Return to Home"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondFloorScreen()),
                );
              },
              child: const Text("Go to 2nd Floor"),
            ),
          ],
        ),
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
            }),
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
        _message = "Correct! Here's some history about Panera.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("restaurant_answered", true);
  }

  // Check if all questions are completed
  void _checkCompletion() {
    if (FirstFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "B") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about Panera.";
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
                    "The History of Panera",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
          // Restore Arrows
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
    bool? answered = prefs.getBool("center_engineering_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct! Here's some history about Chevron.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("center_engineering_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CHEVRON") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about Chevron.";
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
                    "The History of Chevron",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        _message = "Correct! Here's some history about TV news.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("auditoriums_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TV") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about TV news.";
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
                    "The History of TV News",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            child: NavButton(context, "⬆️", const Zone1100Part1Screen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const Room1200Screen()),
          ),
          Align(
            alignment: Alignment.topRight,
            child: NavButton(context, "↗️", const Room1202Screen()),
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
        _message = "Correct! Here's some history about the Cambre Atrium.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("cambre_atrium_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim() == "5") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about the Cambre Atrium.";
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
                    keyboardType: TextInputType.number,
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
                    "The History of the Cambre Atrium",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        _message = "Correct! Here's some history about Rene.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1200_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "RENE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about Rene.";
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
                    "The History of Rene",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            child: NavButton(context, "⬆️", const Room1202Screen()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const AuditoriumsScreen()),
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
        _message = "Correct! Here's some history about Favre.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1202_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "FAVRE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about Favre.";
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
                    "The History of Favre",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const AuditoriumsScreen()),
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
        _message = "Correct! Here's some history about BASF.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("sustainable_lab_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "BASF") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about BASF.";
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
                    "The History of BASF",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
    bool? answered = prefs.getBool("zone1100_part1_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct! Here's some history about vending.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100_part1_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "VENDING") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about vending.";
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
                  Image.asset('assets/1101pt1.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The History of Vending",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
    bool? answered = prefs.getBool("zone1100_part2_answered");
    if (answered == true) {
      setState(() {
        _isCorrect = true;
        _message = "Correct! Here's some history about the googly eyes.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100_part2_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "GOOGLY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about the googly eyes.";
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
                    "The History of the Googly Eyes",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        _message = "Correct! Here's some history about the Capstone Gallery.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1220s_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CAPSTONE GALLERY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about the Capstone Gallery.";
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
                  "Right before you get to the bathroom, there is a sign above your head. What is the location at the bottom left of the sign? (Hint: two words)",
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
                    "The History of the Capstone Gallery",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        _message = "Correct! Here's some history about Tau Beta Pi.";
        _alreadyAnswered = true;
      });
    }
  }

  // Save answer state to SharedPreferences
  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("commons_answered", true);
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

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TAU BETA PI") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++; // Increment only once
          _alreadyAnswered = true;
          _saveAnswerState(); // Save correct answer state
        }
        _isCorrect = true;
        _message = "Correct! Here's some history about Tau Beta Pi.";
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commons"),
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
                    "The History of Tau Beta Pi",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            child: NavButton(context, "⬆️", const RestaurantScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(
                context, "⬇️", const CenterForEngineeringEducationScreen()),
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
