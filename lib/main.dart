import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DestinationProfile(),
    );
  }
}

class DestinationProfile extends StatelessWidget {
  const DestinationProfile({super.key});

  static const backgroundColor = Color(0xFF0D121D);
  static const cardColor = Color(0xFF161C2A);
  static const primaryBlue = Color(0xFF1A60F0);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      // Responsive Image
                      Container(
                        height: screenHeight * 0.35,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/2293372/pexels-photo-2293372.jpeg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Title Section
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF16202E),
                              Color(0xFF0D121D),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Land of beauty",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Top bar
                  Positioned(
                    top: 10,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        Text(
                          "Well come to my  Profile",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 235, 232, 232),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.share, color: Colors.white),
                      ],
                    ),
                  ),

                  // Favorite button
                  Positioned(
                    top: screenHeight * 0.12,
                    right: 20,
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black45,
                      child: Icon(Icons.favorite_border, color: Colors.white),
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.02),

              // Info Cards (Responsive)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Row(
                  children: [
                    Expanded(child: infoCard(Icons.location_on_outlined, "120 km")),
                    const SizedBox(width: 12),
                    Expanded(child: infoCard(Icons.access_time, "2.5 hrs")),
                    const SizedBox(width: 12),
                    Expanded(child: infoCard(Icons.attach_money, "\$45.00")),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // Overview
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Overview",
                    style: TextStyle(
                      color: primaryBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Text(
                  "ature is the vast, intricate ecosystem that encompasses all living organisms and the physical world around us. It serves as the fundamental life-support system of our planet, providing essential resources like clean air, fresh water, and fertile soil. From the towering biodiversity of tropical rainforests to the rhythmic cycles of the seasons, nature operates in a delicate ecological balance that sustains life. Beyond its biological importance, nature offers profound psychological benefits, acting as a source of inspiration, tranquility, and physical well-being for humanity. Protecting these natural landscapes is not just an environmental goal but a necessity for ensuring a sustainable future.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "South Tyrol, Italy",
                      style: TextStyle(color: Colors.white.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.04),

              // Book Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Visit Now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "View Terms and Conditions",
                style: TextStyle(
                  color: Colors.white54,
                  decoration: TextDecoration.underline,
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  static Widget infoCard(IconData icon, String text) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blueAccent, size: 20),
          const SizedBox(height: 6),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}