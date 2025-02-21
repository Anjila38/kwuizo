import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xFFFFD6FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFC8B6FF),
        title: Text(
          "Welcome, User!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 145,
                    child: Text(
                      "Let's Take a Quiz!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3D2C8D),
                      ),
                    ),
                  ),
                  
                  Image.asset(
                    'lib/assets/QWUIZO.png',
                    width: 150,
                   
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildButton("Continue where you left off", Icons.play_arrow, Color(0xFFE7C6FF)),
              SizedBox(height: 20),
              Text(
                "Genres",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF6A0572)),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  genreButton("Action"),
                  genreButton("Comedy"),
                  genreButton("Drama"),
                  genreButton("Sci-Fi"),
                  genreButton("Horror"),
                ],
              ),
              SizedBox(height: 20),
              buildButton("Discover New Quizzes", Icons.search, Color(0xFFB8C0FF)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFC8B6FF),
        selectedItemColor: Color(0xFF3D2C8D),
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: "Leaderboard"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  Widget buildButton(String text, IconData icon, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Icon(icon, color: Colors.white),
        ],
      ),
    );
  }

  Widget genreButton(String genre) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFBBD0FF),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: () {},
      child: Text(
        genre,
        style: TextStyle(color: Color(0xFF3D2C8D), fontWeight: FontWeight.bold),
      ),
    );
  }
}
