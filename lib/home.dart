import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hallo ini Revaa',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 164, 238),
        leading: const Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(width: 15),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon profil
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 220, 250),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 80,
                  color: Color.fromARGB(255, 122, 47, 122),
                ),
              ),

              const SizedBox(height: 20),

              // Judul
              const Text(
                'Welcome, Revaa! 💗',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 167, 214),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Welcome to the Home Screen!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 25),

              // Card motivasi
              Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 103, 32, 115),
                        size: 40,
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Semangat Belajar Flutter!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Belajar sedikit demi sedikit,\n'
                        'lama-lama menjadi bisa.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Menu icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _menuIcon(
                    Icons.home,
                    'Home',
                    const Color.fromARGB(255, 238, 164, 238),
                  ),
                  _menuIcon(
                    Icons.school,
                    'Study',
                    const Color.fromARGB(255, 103, 32, 115),
                  ),
                  _menuIcon(
                    Icons.favorite,
                    'Favorite',
                    const Color.fromARGB(255, 214, 80, 150),
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 247, 150, 247),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  // Widget untuk icon menu
  static Widget _menuIcon(
    IconData icon,
    String text,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(
            icon,
            size: 32,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}