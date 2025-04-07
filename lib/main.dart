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
        fontFamily: 'ProximaNova',
        colorScheme: ColorScheme(
            primary: Color(0xFF461D7C),
            onPrimary: Color(0xFFF1EEDB),
            secondary: Color(0xFFF1EEDB),
            onSecondary: Color(0xFF461D7C),
            brightness: Brightness.light,
            error: Color(0xFFA39AAC),
            onError: Color(0xFF333333),
            surface: Colors.white,
            onSurface: Color(0xFF461D7C)),
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
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    // Responsive sizes – adjust these fractions as needed
    double imageSize = screenWidth * 0.3; // Each image ~30% of screen width
    double horizontalPadding = screenWidth * 0.05;
    double verticalSpacing = screenWidth * 0.03;
    double logoSize = screenWidth * 0.2; // Logo scales with screen width

    return MainScaffold(
      currentIndex: 0,
      body: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logo.png',
            width: logoSize,
            height: logoSize,
          ),
          backgroundColor: const Color(0xFF461D7C),
          foregroundColor: const Color(0xFFF1EEDB),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                SizedBox(height: verticalSpacing),
                // Welcome Message
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Welcome to the GREATEST Patrick F. Taylor Hall self-guided tour of all time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: verticalSpacing * 2),
                // Top row with two images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/pft.png',
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/pft2.png',
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),
                // Middle row with navigation buttons
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
                        padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: verticalSpacing),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'ProximaNova',
                        ),
                      ),
                      child: const Text(
                        "Explore the first floor",
                        style: TextStyle(fontFamily: 'ProximaNova'),
                      ),
                    ),
                    SizedBox(height: verticalSpacing),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondFloorScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: verticalSpacing),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'ProximaNova',
                        ),
                      ),
                      child: const Text(
                        "Explore the second floor",
                        style: TextStyle(fontFamily: 'ProximaNova'),
                      ),
                    ),
                    SizedBox(height: verticalSpacing),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdFloorScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: verticalSpacing),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'ProximaNova',
                        ),
                      ),
                      child: const Text(
                        "Explore the third floor",
                        style: TextStyle(fontFamily: 'ProximaNova'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),
                // Bottom row with two images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/pft1.png',
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/pft3.png',
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstFloorScreen extends StatelessWidget {
  const FirstFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive sizing.
    double screenWidth = MediaQuery.of(context).size.width;
    // Adjust these values as needed:
    double fontSize = screenWidth * 0.04; // e.g., 4% of screen width
    double horizontalPadding = screenWidth * 0.03;
    double verticalPadding = screenWidth * 0.02;

    return MainScaffold(
      currentIndex: 1, // First floor tab
      body: Scaffold(
        appBar: AppBar(
          title: const Text(
            "First Floor Main Screen",
            style: TextStyle(fontFamily: 'ProximaNova'),
          ),
          backgroundColor: const Color(0xFF461D7C),
          foregroundColor: const Color(0xFFF1EEDB),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(6),
            child: LinearProgressIndicator(
              value: FirstFloorProgress.questionsAnswered /
                  FirstFloorProgress.totalQuestions,
              backgroundColor: Colors.white,
              color: Colors.green,
              minHeight: 6,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Top: Floor Map image
                Image.asset(
                  'assets/pft1st.png',
                  width: screenWidth,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 12),
                // Buttons wrapped into rows
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    buildNavButton(
                        context,
                        "Restaurant",
                        const RestaurantScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Center for Engineering Education",
                        const CenterForEngineeringEducationScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Auditoriums",
                        const AuditoriumsScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Cambre Atrium",
                        const CambreAtriumScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(context, "1200", const Room1200Screen(),
                        fontSize, horizontalPadding, verticalPadding),
                    buildNavButton(context, "1202", const Room1202Screen(),
                        fontSize, horizontalPadding, verticalPadding),
                    buildNavButton(
                        context,
                        "Sustainable Living Lab",
                        const SustainableLivingLabScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Zone 1100 Part 1",
                        const Zone1100Part1Screen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Zone 1100 Part 2",
                        const Zone1100Part2Screen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "1220s and Bathroom",
                        const Room1220sScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "The Commons",
                        const CommonsScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavButton(BuildContext context, String title, Widget screen,
      double fontSize, double horizontalPadding, double verticalPadding) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        textStyle: TextStyle(fontSize: fontSize, fontFamily: 'ProximaNova'),
      ),
      child: Text(
        title,
        style: const TextStyle(fontFamily: 'ProximaNova'),
      ),
    );
  }
}

class SecondFloorScreen extends StatelessWidget {
  const SecondFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive sizing.
    double screenWidth = MediaQuery.of(context).size.width;
    // Adjust the font size and paddings as needed.
    double fontSize = screenWidth * 0.04; // 4% of screen width
    double horizontalPadding = screenWidth * 0.03;
    double verticalPadding = screenWidth * 0.02;

    return MainScaffold(
      currentIndex: 2,
      body: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Second Floor Main Screen",
            style: TextStyle(fontFamily: 'ProximaNova'),
          ),
          backgroundColor: const Color(0xFF461D7C),
          foregroundColor: const Color(0xFFF1EEDB),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(6),
            child: LinearProgressIndicator(
              value: SecondFloorProgress.questionsAnswered /
                  SecondFloorProgress.totalQuestions,
              backgroundColor: Colors.white,
              color: Colors.green,
              minHeight: 6,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(horizontalPadding),
            child: Column(
              children: [
                // Top: Bigger Floor map image in a container with a fixed height.
                Container(
                  width: screenWidth,
                  height: screenWidth * 0.7, // Adjust this factor as needed
                  child: Image.asset(
                    'assets/secondfloorlayout.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12),
                // Buttons wrapped into rows using Wrap widget.
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    buildNavButton(context, "BIM Lab", const BimLabScreen(),
                        fontSize, horizontalPadding, verticalPadding),
                    buildNavButton(context, "Proto Lab", const ProtoLabScreen(),
                        fontSize, horizontalPadding, verticalPadding),
                    buildNavButton(
                        context,
                        "Annex/Drilling Fluids Lab",
                        const AnnexLabScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Driving Simulator",
                        const DrivingSimulatorScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                    buildNavButton(
                        context,
                        "Brookshire Suite",
                        const BrookshireScreen(),
                        fontSize,
                        horizontalPadding,
                        verticalPadding),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavButton(BuildContext context, String title, Widget screen,
      double fontSize, double horizontalPadding, double verticalPadding) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        textStyle: TextStyle(
          fontSize: fontSize,
          fontFamily: 'ProximaNova',
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontFamily: 'ProximaNova'),
      ),
    );
  }
}

class ThirdFloorScreen extends StatelessWidget {
  const ThirdFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 3,
      body: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Third Floor Main Screen",
            style: TextStyle(fontFamily: 'ProximaNova'),
          ),
          backgroundColor: const Color(0xFF461D7C),
          foregroundColor: const Color(0xFFF1EEDB),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(6),
            child: LinearProgressIndicator(
              value: ThirdFloorProgress.questionsAnswered /
                  ThirdFloorProgress.totalQuestions,
              backgroundColor: Colors.white,
              color: Colors.green,
              minHeight: 6,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Welcome to the Third Floor! We are not going to make you follow this whole maze, so just find the following places!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNova',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              buildNavButton(context, "Alfredo Room", const AlfredoScreen()),
              buildNavButton(context, "Civil & Environmental Engineering",
                  const CEEScreen()),
              buildNavButton(context, "Mechanical & Industrial Engineering",
                  const MIEScreen()),
              buildNavButton(
                  context, "Construction Management", const CMScreen()),
              buildNavButton(
                  context,
                  "Electrical Engineering & Computer Science",
                  const EECSScreen()),
              buildNavButton(
                  context, "Chemical Engineering", const ChEScreen()),
              buildNavButton(context, "Elevators", const ElevatorsScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavButton(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          textStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'ProximaNova',
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(fontFamily: 'ProximaNova'),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
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

// Make sure the following FloorMapButton widget is defined above this screen in your file:
class FloorMapButton extends StatelessWidget {
  final String smallMapAsset;
  final String largeMapAsset;
  final String floorName;

  const FloorMapButton({
    Key? key,
    required this.smallMapAsset,
    required this.largeMapAsset,
    required this.floorName,
  }) : super(key: key);

  void _showLargeMap(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset(largeMapAsset, fit: BoxFit.contain),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 16,
      child: GestureDetector(
        onTap: () => _showLargeMap(context),
        child: Column(
          children: [
            Image.asset(smallMapAsset, width: 60, height: 60),
            const SizedBox(height: 4),
            Text(
              floorName,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class FloorProgressBar extends StatelessWidget {
  final int progress;
  final int total;
  final String floorName;

  const FloorProgressBar({
    Key? key,
    required this.progress,
    required this.total,
    required this.floorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fraction = total > 0 ? progress / total : 0.0;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$floorName Progress: $progress / $total",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: fraction,
          minHeight: 10,
          backgroundColor: Color(0xFF461D7C),
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
        ),
      ],
    );
  }
}

// -----------------------
// RestaurantScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("restaurant_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "B") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Color(0xFF461D7C),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "What is the seventh letter of the restaurant that you are now approaching?\n(Hint: It is the first letter of the 2nd word).",
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
                      "Panera Bread opened in LSU's Patrick F. Taylor Hall on August 13, 2018, offering students and faculty convenient access to freshly baked goods, soups, salads, and sandwiches...",
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const Room1220sScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const CommonsScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// CenterForEngineeringEducationScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("center_for_engineering_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CHEVRON") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Color(0xFF461D7C),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "The Chevron Center for Engineering Education, located in LSU's Patrick F. Taylor Hall, serves as a hub for enhancing engineering students' communication and technical skills...",
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
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const CommonsScreen()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const Room1202Screen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// AuditoriumsScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("auditoriums_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TV") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "Located outside the auditoriums in LSU's Patrick F. Taylor Hall, televisions display news covering politics, sports, and campus events...",
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const Room1220sScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const CommonsScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// CambreAtriumScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("cambre_atrium_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim() == "5") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
          _alreadyAnswered = true;
          _saveAnswerState();
        }
        _isCorrect = true;
        _message = "Congrats!";
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
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "The Cambre Atrium in LSU's Patrick F. Taylor Hall serves as a central connector between the original structure and a newly constructed three-story laboratory annex...",
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
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const SustainableLivingLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const Zone1100Part2Screen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// Room1200Screen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1200_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "RENE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "Room 1200 in LSU's Patrick F. Taylor Hall is a general-purpose classroom with a seating capacity of 150. Located within the 1200 Zone of the building...",
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const AuditoriumsScreen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const Room1202Screen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// Room1202Screen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1202_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "FAVRE") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "The Donor Wall (outside of Room 1202) in LSU's Patrick F. Taylor Hall is located across from the RoyOMartin Auditorium. It honors donors who supported the building’s renovation and expansion.",
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
          ),
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
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// SustainableLivingLabScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("sustainable_lab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "BASF") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "The BASF Sustainable Living Laboratory, established in 2017 within LSU's Patrick F. Taylor Hall, is an innovative space promoting problem-based teaching and research focused on sustainable solutions to global challenges.",
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const CambreAtriumScreen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const Room1220sScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// Zone1100Part1Screen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100part1_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "VENDING") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "LSU offers over 300 vending machines across campus, providing snacks, drinks, and school supplies using TigerCASH or cards.",
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
          ),
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
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// Zone1100Part2Screen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("zone1100part2_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "GOOGLY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "Students often customize signage or bulletin boards in fun ways—like adding googly eyes to signs. This brings a bit of humor and personality to the academic setting.",
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
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const CambreAtriumScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const Zone1100Part1Screen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// Room1220sScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("room1220s_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "CAPSTONE GALLERY") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
                      "Patrick F. Taylor Hall at LSU offers well-maintained restroom facilities on each floor, conveniently located near classrooms and common areas. The second-floor bathrooms are particularly noted for their cleanliness and low foot traffic, making them a preferred choice for many students.",
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const SustainableLivingLabScreen()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NavButton(context, "➡️", const RestaurantScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
          ),
        ],
      ),
    );
  }
}

// -----------------------
// CommonsScreen
// -----------------------
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("commons_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() == "TAU BETA PI") {
      setState(() {
        if (!_alreadyAnswered) {
          FirstFloorProgress.questionsAnswered++;
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
                        builder: (context) => const SecondFloorScreen()));
              },
              child: const Text("Go to Second Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: FirstFloorProgress.questionsAnswered /
                FirstFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(
                context, "⬇️", const CenterForEngineeringEducationScreen()),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: NavButton(context, "⬆️", const RestaurantScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/pft1st.png',
            largeMapAsset: 'assets/pft1st.png',
            floorName: "1st Floor Map",
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
        title: const Text(
          "Alfredo Room",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/alfredo.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "Congratulations you found the Alfredo room. Select the back button to go back to the main third floor screen.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Civil & Environmental Engineering",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/cee.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Department of Civil and Environmental Engineering (CEE) at Louisiana State University (LSU) offers undergraduate and graduate programs focused on structural, geotechnical, environmental, transportation, and water resources engineering. The department is known for its research in coastal sustainability, disaster resilience, and infrastructure innovation, benefiting from LSU’s proximity to the Mississippi River and Gulf Coast. CEE students gain hands-on experience through state-of-the-art labs, industry partnerships, and projects addressing real-world engineering challenges.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Mechanical & Industrial Engineering",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/mie.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Department of Mechanical & Industrial Engineering (MIE) at Louisiana State University (LSU) offers programs in mechanical engineering, industrial engineering, and petroleum engineering. The department emphasizes hands-on learning, research, and industry collaboration in areas such as manufacturing, robotics, energy systems, and supply chain optimization. MIE students benefit from advanced labs, internship opportunities, and strong connections with industry leaders to prepare for careers in engineering and technology.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Construction Management",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/cm.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Construction Management (CM) Department at Louisiana State University (LSU) prepares students for leadership roles in the construction industry by combining engineering, business, and project management principles. The program emphasizes hands-on experience, technological innovation, and sustainable building practices. With strong industry connections, state-of-the-art labs, and internship opportunities, CM graduates are well-equipped for careers in construction, project management, and infrastructure development.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Electrical Engineering & Computer Science",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/eecs.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Division of Electrical Engineering & Computer Science (EECS) at Louisiana State University (LSU) offers cutting-edge programs in electrical engineering, computer engineering, and computer science. The division focuses on areas such as artificial intelligence, cybersecurity, embedded systems, power systems, and telecommunications. With advanced research facilities, industry partnerships, and hands-on learning opportunities, EECS prepares students for careers in rapidly evolving technological fields.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Chemical Engineering",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/che.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "The Cain Department of Chemical Engineering (ChE) at Louisiana State University (LSU) provides a strong foundation in chemical processes, materials science, and energy production. The program emphasizes hands-on research, sustainability, and industrial applications, preparing students for careers in petrochemicals, pharmaceuticals, biotechnology, and environmental engineering. With state-of-the-art labs and strong industry ties, LSU ChE graduates are well-equipped to tackle real-world engineering challenges.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
          title: const Text(
            "Third Floor Completed! 🎉",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          content: const Text(
            "You've completed all the questions for the Third Floor!",
            style: TextStyle(fontFamily: 'ProximaNovaBlack'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ThirdFloorProgress.resetProgress();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "Restart",
                style: TextStyle(fontFamily: 'ProximaNovaBlack'),
              ),
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
        title: const Text(
          "Elevators",
          style: TextStyle(fontFamily: 'ProximaNovaBlack'),
        ),
        backgroundColor: const Color(0xFF461D7C),
        foregroundColor: const Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: ThirdFloorProgress.questionsAnswered /
                ThirdFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'ProximaNovaBlack'),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
                ),
                if (_isCorrect) ...[
                  const SizedBox(height: 20),
                  Image.asset('assets/elevators.png', width: 300),
                  const SizedBox(height: 10),
                  const Text(
                    "You found the elevators! You can leave now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ProximaNovaBlack',
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Text(
                  "Third Floor Questions Answered: ${ThirdFloorProgress.questionsAnswered}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProximaNovaBlack',
                  ),
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
  static const int totalQuestions = 7; // adjust as needed
  static bool isCompleted() => questionsAnswered >= totalQuestions;
  static void resetProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    questionsAnswered = 0;
    // Reset any third floor related prefs here.
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("bimlab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() ==
        "2348 AND CONSTRUCTION MANAGEMENT") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++;
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
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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
              child: const Text("Go to First Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: SecondFloorProgress.questionsAnswered /
                SecondFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                    "The lab space consists of 44 4K displays that allow for three-dimensional and computer-generated views of building plans. This lets students and faculty virtually visit building sites to assess and adjust plans.",
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
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const ProtoLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const AnnexLabScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/secondfloorlayout.jpg',
            largeMapAsset: 'assets/secondfloorlayout.jpg',
            floorName: "2nd Floor Map",
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("protolab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() ==
        "2272 AND ELECTRICAL ENGINEERING") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++;
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
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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
              child: const Text("Go to First Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdFloorScreen()),
                );
              },
              child: const Text("Go to Third Floor"),
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: SecondFloorProgress.questionsAnswered /
                SecondFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                    "This space is used by students to fabricate circuit boards and create device prototypes.",
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
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const BimLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const AnnexLabScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/secondfloorlayout.jpg',
            largeMapAsset: 'assets/secondfloorlayout.jpg',
            floorName: "2nd Floor Map",
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("annexlab_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() ==
        "2147 AND CHEMICAL ENGINEERING") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++;
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
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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
                        builder: (context) => const FirstFloorScreen()));
              },
              child: const Text("Go to Firstt Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        title: const Text("Annex/Drilling Fluid Lab"),
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: SecondFloorProgress.questionsAnswered /
                SecondFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                    "Petroleum engineers use various methods and equipment to measure and adjust drilling fluids. This lab offers hands-on experience with such equipment.",
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
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const DrivingSimulatorScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const BrookshireScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/secondfloorlayout.jpg',
            largeMapAsset: 'assets/secondfloorlayout.jpg',
            floorName: "2nd Floor Map",
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("drivingsimulator_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() ==
        "2215 AND CIVIL ENGINEERING") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++;
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
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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
                        builder: (context) => const FirstFloorScreen()));
              },
              child: const Text("Go to First Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        title: const Text("Civil Engineering Driving Simulator"),
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: SecondFloorProgress.questionsAnswered /
                SecondFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
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
                    "The Civil Engineering Driving Simulator Laboratory allows research on driving behaviors and traffic.",
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
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const AnnexLabScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬇️", const BrookshireScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/secondfloorlayout.jpg',
            largeMapAsset: 'assets/secondfloorlayout.jpg',
            floorName: "2nd Floor Map",
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

  void _saveAnswerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("brookshire_answered", true);
  }

  void _checkAnswer() {
    if (_answerController.text.trim().toUpperCase() ==
        "2228 AND ALL ENGINEERING MAJORS") {
      setState(() {
        if (!_alreadyAnswered) {
          SecondFloorProgress.questionsAnswered++;
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
    if (SecondFloorProgress.isCompleted()) {
      _showCompletionDialog();
    }
  }

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
                        builder: (context) => const FirstFloorScreen()));
              },
              child: const Text("Go to First Floor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdFloorScreen()));
              },
              child: const Text("Go to Third Floor"),
            ),
            TextButton(
              onPressed: () {
                FirstFloorProgress.resetProgress();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
        backgroundColor: Color(0xFF461D7C),
        foregroundColor: Color(0xFFF1EEDB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: SecondFloorProgress.questionsAnswered /
                SecondFloorProgress.totalQuestions,
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 6,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What room number is the Student Service Suite? What major commonly uses it?",
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
                    "The Office of Student Services provides many resources for changing majors, adding minors, and verifying course credit transfers.",
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
          Align(
            alignment: Alignment.centerLeft,
            child: NavButton(context, "⬅️", const DrivingSimulatorScreen()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavButton(context, "⬆️", const AnnexLabScreen()),
          ),
          const FloorMapButton(
            smallMapAsset: 'assets/secondfloorlayout.jpg',
            largeMapAsset: 'assets/secondfloorlayout.jpg',
            floorName: "2nd Floor Map",
          ),
        ],
      ),
    );
  }
}

class SecondFloorProgress {
  static int questionsAnswered = 0;
  static const int totalQuestions = 5; // adjust as needed
  static bool isCompleted() => questionsAnswered >= totalQuestions;
  static void resetProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    questionsAnswered = 0;
    // Reset any second floor related prefs here.
  }
}

class MainScaffold extends StatefulWidget {
  final Widget body;
  final int currentIndex;

  const MainScaffold(
      {super.key, required this.body, required this.currentIndex});

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  void _onItemTapped(int index) {
    if (index == widget.currentIndex) return;

    Widget screen;
    switch (index) {
      case 0:
        screen = const HomeScreen();
        break;
      case 1:
        screen = const FirstFloorScreen();
        break;
      case 2:
        screen = const SecondFloorScreen();
        break;
      case 3:
        screen = const ThirdFloorScreen();
        break;
      default:
        screen = const HomeScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        selectedItemColor: Color(0xFF461D7C),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: '1st Floor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: '2nd Floor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: '3rd Floor',
          ),
        ],
      ),
    );
  }
}
