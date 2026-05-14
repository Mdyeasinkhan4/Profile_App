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
      title: 'My Profile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: width * 0.15,
                  backgroundImage: const NetworkImage(
                    'https://i.postimg.cc/W4FfXNcG/profile.jpg',
                  ),
                ),
                SizedBox(height: 8,),
                Text("Md. Yeasin khan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text("Flutter Beginner & Future App Developer", style: TextStyle(fontSize: 12,color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                SizedBox(height: 12,),
                Text("I love building Mobile apps using flutter.\n Learning new things everyday and \n enjoying the journey!", style: TextStyle(fontSize: 12, color: Colors.black87), textAlign: TextAlign.center,),
                SizedBox(height: 12,),
                Card(
                  icon: Icons.location_on,
                  title: "Location",
                  subtitle: "Dhaka, Bangladesh",
                  color: Colors.deepPurple[100]!,
                  iconColor: Colors.white,
                  logoColor: Colors.deepPurple,
                  titleColor: Colors.deepPurple,
                ),
                SizedBox(height: 12,),
                Card(
                  icon: Icons.school,
                  title: "Education",
                  subtitle: "BSc in CSE at Port City International University",
                  color: const Color.fromARGB(255, 191, 228, 217)!,
                  iconColor: Colors.white,
                  logoColor: const Color.fromARGB(255, 1, 128, 43),
                  titleColor: const Color.fromARGB(255, 1, 128, 43),
                ),
                SizedBox(height: 12,),
                Card(
                  icon: Icons.code,
                  title: "Skills",
                  subtitle: "Flutter, Dart, Java, Python",
                  color: const Color.fromARGB(255, 182, 235, 248)!,
                  iconColor: Colors.white,
                  logoColor: const Color.fromARGB(255, 2, 192, 240),
                  titleColor: const Color.fromARGB(255, 2, 192, 240),
                ),
                  SizedBox(height: 12,),
                  Text("Connect with me", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialMediaIcons(icon: Icons.facebook, color: Colors.blue, lebel: "Facebook"),
                        SocialMediaIcons(icon: Icons.code, color: const Color.fromARGB(255, 0, 0, 0)!, lebel: "Github"),
                        SocialMediaIcons(icon: Icons.email, color: const Color.fromARGB(255, 252, 115, 4), lebel: "Mail"),
                        
                      ],
                    ),
                  ),

              ],
            ),
          ),
        ),
      ),
      );
  }
}

class Card extends StatelessWidget {
  const Card({super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.iconColor,
    required this.logoColor,
    required this.titleColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color iconColor;
  final Color logoColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 80,
                  width: 420,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: .circular(8), color: color),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        children: [

                          //LOGO
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: logoColor,
                            ),

                            //Icon
                            child: Icon(icon, color: Color.fromARGB(255, 240, 240, 240),),
                          ),
                          SizedBox(width: 16),

                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: titleColor),),
                              SizedBox(height: 8,),
                              Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.black),),
                            ],
                          ),
                        ],  
                      ),
                    ],
                  ),
                );
  }
}

Widget SocialMediaIcons({
  required IconData icon,
  required Color color,
  required String lebel,
}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 28,
        backgroundColor: color,
        child: Icon(icon, color: Colors.white),
      ),
      SizedBox(height: 4),
      Text(lebel),
    ],
  );
}

