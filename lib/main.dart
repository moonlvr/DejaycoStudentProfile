import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: const Color(0xFFF6F2FB),
        fontFamily: 'Roboto',
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showAcademicInfo = true;

  // Personal Information
  final String fullName = "Leslie Mae E. Dejayco";
  final String nickname = "les";
  final String age = "19";
  final String birthday = "October 27, 2006";
  final String address = "St. Joseph, Cabuyao Laguna";
  final String hobby = "Watching kdrama and drawing";
  final String motto = "Small steps everyday";
  final String course = "BS Information Technology";
  final String yearLevel = "3rd Year";
  final String section = "3IT-B";
  final String email = "lesliemaedejayco@gmail.com";
  final String github = "github.com/moonlvr";

  // Academic Information
  final String favoriteSubject = "Web Development";
  final String academicInterest = "Web Design";
  final String careerGoal = "Web Developer";
  final String technicalSkill = "HTML, CSS, JS";

  Widget _navItem(String label, {bool active = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: active ? FontWeight.bold : FontWeight.w500,
          color: active ? const Color(0xFFE8590C) : const Color(0xFF333333),
        ),
      ),
    );
  }

  // Header
  Widget _buildSiteHeader() {
    return Column(
      children: [
        // Thin dark utility bar
        Container(
          width: double.infinity,
          color: const Color(0xFF14213D),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          ),
        ),
        // White navbar
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ITP107",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.deepPurple,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _navItem("Home"),
                      _navItem("Profile", active: true),
                      _navItem("About"),
                      _navItem("Contact"),
                      _navItem("Help"),
                      const SizedBox(width: 6),
                      const Icon(Icons.search, size: 18, color: Color(0xFF333333)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Gray title bar
        Container(
          width: double.infinity,
          color: const Color(0xFFF0F0F0),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: const Text(
            "STUDENT PROFILE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              color: Color(0xFF222222),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildSiteHeader(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ===== HEADER CARD =====
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Color(0xFF4A148C), Color(0xFF9C27B0)],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -40,
                            right: -50,
                            child: Transform.rotate(
                              angle: 0.6,
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(36),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -60,
                            left: -40,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.06),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 26, horizontal: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius: 10,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/profile.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Text(
                                  fullName,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "\"$nickname\"",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white70,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.white.withOpacity(0.3)),
                                  ),
                                  child: Text(
                                    "$course • $yearLevel",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Personal Information Card
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.badge, color: Colors.deepPurple),
                                SizedBox(width: 8),
                                Text(
                                  "Personal Information",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(height: 24, thickness: 1),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.cake_outlined,
                                  color: Colors.deepPurple),
                              title: const Text("Age / Birthday"),
                              subtitle: Text("$age years old • $birthday"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.home_outlined,
                                  color: Colors.deepPurple),
                              title: const Text("Address"),
                              subtitle: Text(address),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(
                                  Icons.sports_esports_outlined,
                                  color: Colors.deepPurple),
                              title: const Text("Hobby"),
                              subtitle: Text(hobby),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.format_quote,
                                  color: Colors.deepPurple),
                              title: const Text("Motto"),
                              subtitle: Text(motto),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.class_outlined,
                                  color: Colors.deepPurple),
                              title: const Text("Section"),
                              subtitle: Text(section),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Contact Card
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(
                            color: Colors.deepPurple.withOpacity(0.1)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.contact_mail_outlined,
                                    color: Colors.deepPurple),
                                SizedBox(width: 8),
                                Text(
                                  "Contact & Links",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(height: 24, thickness: 1),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.email_outlined,
                                  color: Colors.deepPurple),
                              title: const Text("Email"),
                              subtitle: Text(email),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.code,
                                  color: Colors.deepPurple),
                              title: const Text("GitHub"),
                              subtitle: Text(github),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Academic toggle
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Academic Information",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              setState(() {
                                showAcademicInfo = !showAcademicInfo;
                              });
                            },
                            icon: Icon(
                              showAcademicInfo
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: Colors.deepPurple,
                            ),
                            label: Text(
                              showAcademicInfo ? "Hide" : "Show",
                              style: const TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Academic Information
                    if (showAcademicInfo)
                      Card(
                        elevation: 3,
                        color: const Color(0xFFF1E9FB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Wrap(
                            spacing: 12,
                            runSpacing: 12,
                            children: [
                              _AcademicChip(
                                icon: Icons.menu_book,
                                label: "Favorite Subject",
                                value: favoriteSubject,
                              ),
                              _AcademicChip(
                                icon: Icons.lightbulb_outline,
                                label: "Academic Interest",
                                value: academicInterest,
                              ),
                              _AcademicChip(
                                icon: Icons.flag_outlined,
                                label: "Career Goal",
                                value: careerGoal,
                              ),
                              _AcademicChip(
                                icon: Icons.build_outlined,
                                label: "Technical Skill",
                                value: technicalSkill,
                              ),
                            ],
                          ),
                        ),
                      ),

                    const SizedBox(height: 24),

                    // Action button
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Thanks for viewing my profile!"),
                            backgroundColor: Colors.deepPurple,
                          ),
                        );
                      },
                      icon: const Icon(Icons.share_outlined),
                      label: const Text("Share"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AcademicChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _AcademicChip({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.deepPurple.withOpacity(0.15)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple, size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}