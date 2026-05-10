import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple.shade900),
      ),
      home: const MyHomePage(title: 'My Profile'),
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
  Widget? get Coloum => null;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              // Profile Image
              CircleAvatar(
                radius: width * 0.15,
                backgroundImage: const NetworkImage(
                  "https://i.postimg.cc/W4FfXNcG/profile.jpg",
                ),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                "Md Yeasin Khan",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              // Short Bio
              const Text(
                "Flutter Beginner & Future App Developer",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 15),

              const Text(
                "I love building mobile apps with Flutter.\n"
                    "Learning new things every day and\n"
                    "enjoying the journey! 🚀",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 25),

              // Location Card
              infoCard(
                icon: Icons.location_on,
                title: "Location",
                subtitle: "Chittagong, Bangladesh",
                color: Colors.deepPurple,
              ),

              const SizedBox(height: 15),

              // Education Card
              infoCard(
                icon: Icons.school,
                title: "Education",
                subtitle: "BSc in CSE in Port City International University",
                color: Colors.green,
              ),

              const SizedBox(height: 15),

              // Skills Card
              infoCard(
                icon: Icons.code,
                title: "Skills",
                subtitle:
                "Flutter, Dart, Firebase, Git, C, C#, Java, Python",
                color: Colors.blue,
              ),

              const SizedBox(height: 30),

              const Text(
                "Connect With Me",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  socialButton(
                    icon: Icons.facebook,
                    color: Colors.blue,
                    label: "Facebook",
                  ),

                  socialButton(
                    icon: Icons.code,
                    color: Colors.black,
                    label: "GitHub",
                  ),

                  socialButton(
                    icon: Icons.email,
                    color: Colors.red,
                    label: "Email",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Information Card Widget
  Widget infoCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Social Button Widget
  Widget socialButton({
    required IconData icon,
    required Color color,
    required String label,
  }) {
    return Column(
      children: [

        CircleAvatar(
          radius: 28,
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        Text(label),
      ],
    );
  }
}