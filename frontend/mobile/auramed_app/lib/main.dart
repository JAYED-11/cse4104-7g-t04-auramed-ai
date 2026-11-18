
import 'package:flutter/material.dart';

void main() {
  runApp(const AuraMedApp());
}

// ================= THEME COLORS =================

const Color primary = Color(0xFF168477);
const Color dark = Color(0xFF173B45);
const Color background = Color(0xFFF5F8F7);
const Color secondaryText = Color(0xFF82918F);
const Color cardColor = Colors.white;

// ================= MAIN APP =================

class AuraMedApp extends StatelessWidget {
  const AuraMedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AuraMed AI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          surface: background,
        ),
        fontFamily: 'Roboto',
      ),
      home: const DashboardScreen(),
    );
  }
}

// ================= DASHBOARD =================

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  void showComingSoon(String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$feature will be available soon.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ========== HEADER ==========

                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: dark,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.health_and_safety_rounded,
                          color: Colors.white,
                          size: 29,
                        ),
                      ),

                      const SizedBox(width: 12),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AuraMed AI',
                            style: TextStyle(
                              color: dark,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            'SMARTER HEALTHCARE',
                            style: TextStyle(
                              color: secondaryText,
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      IconButton(
                        onPressed: () =>
                            showComingSoon('Notifications'),
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          color: dark,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(45, 45),
                        ),
                      ),

                      const SizedBox(width: 10),

                      CircleAvatar(
                        radius: 22,
                        backgroundColor: const Color(0xFFDDECE8),
                        child: const Icon(
                          Icons.person_outline_rounded,
                          color: dark,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 35),

                  // ========== WELCOME SECTION ==========

                  const Text(
                    'Welcome back 👋',
                    style: TextStyle(
                      color: dark,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.7,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Your personal healthcare companion.',
                    style: TextStyle(
                      color: secondaryText,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 26),

                  // ========== AI ASSISTANT BANNER ==========

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF173B45),
                          Color(0xFF24645F),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: dark.withValues(alpha: 0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -12,
                          top: 5,
                          child: Icon(
                            Icons.health_and_safety_rounded,
                            size: 125,
                            color: Colors.white.withValues(alpha: 0.07),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.13),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.auto_awesome,
                                    color: Color(0xFF9DE1C9),
                                    size: 14,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'AI HEALTH ASSISTANT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 22),

                            const Text(
                              'Healthcare,\\nmade smarter.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.5,
                              ),
                            ),

                            const SizedBox(height: 12),

                            const Text(
                              'Ask questions, explore health information '
                              'and understand your medical reports.',
                              style: TextStyle(
                                color: Color(0xFFD4E5E1),
                                fontSize: 13,
                                height: 1.6,
                              ),
                            ),

                            const SizedBox(height: 23),

                            ElevatedButton(
                              onPressed: () =>
                                  showComingSoon('AI Health Chat'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFBCE5D8),
                                foregroundColor: dark,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 19,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Start AI Chat',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.arrow_forward_rounded, size: 17),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 34),

                  // ========== SERVICES HEADER ==========

                  const Row(
                    children: [
                      Text(
                        'Our Services',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: dark,
                          letterSpacing: -0.4,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Explore all',
                        style: TextStyle(
                          fontSize: 12,
                          color: primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Healthcare tools designed around you.',
                    style: TextStyle(
                      color: secondaryText,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // ========== SERVICE CARDS ==========

                  LayoutBuilder(
                    builder: (context, constraints) {
                      final columns =
                          constraints.maxWidth > 650 ? 4 : 2;

                      final cardWidth =
                          (constraints.maxWidth - (columns - 1) * 13) /
                              columns;

                      return Wrap(
                        spacing: 13,
                        runSpacing: 13,
                        children: [
                          ServiceCard(
                            width: cardWidth,
                            icon: Icons.smart_toy_outlined,
                            title: 'AI Health Chat',
                            subtitle: 'Ask health questions',
                            iconColor: primary,
                            iconBackground: const Color(0xFFE4F1ED),
                            onTap: () =>
                                showComingSoon('AI Health Chat'),
                          ),

                          ServiceCard(
                            width: cardWidth,
                            icon: Icons.monitor_heart_outlined,
                            title: 'Symptom Checker',
                            subtitle: 'Explore symptoms',
                            iconColor: const Color(0xFF5479A5),
                            iconBackground: const Color(0xFFE9EFF6),
                            onTap: () =>
                                showComingSoon('Symptom Checker'),
                          ),

                          ServiceCard(
                            width: cardWidth,
                            icon: Icons.description_outlined,
                            title: 'Report Analysis',
                            subtitle: 'Understand reports',
                            iconColor: const Color(0xFFB17B43),
                            iconBackground: const Color(0xFFF5EEE5),
                            onTap: () =>
                                showComingSoon('Report Analysis'),
                          ),

                          ServiceCard(
                            width: cardWidth,
                            icon: Icons.menu_book_outlined,
                            title: 'Health Library',
                            subtitle: 'Explore knowledge',
                            iconColor: const Color(0xFF8066A8),
                            iconBackground: const Color(0xFFF0EBF5),
                            onTap: () =>
                                showComingSoon('Health Library'),
                          ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 34),

                  // ========== INFORMATION SECTION ==========

                  const Text(
                    'Health & Wellness',
                    style: TextStyle(
                      color: dark,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.4,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFEAF0EE),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE4F1ED),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.lightbulb_outline_rounded,
                            color: primary,
                            size: 26,
                          ),
                        ),

                        const SizedBox(width: 14),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Knowledge is better healthcare',
                                style: TextStyle(
                                  color: dark,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(height: 7),

                              Text(
                                'Learn about health topics and '
                                'discover helpful information to '
                                'make informed decisions.',
                                style: TextStyle(
                                  color: secondaryText,
                                  fontSize: 12,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  // ========== DISCLAIMER ==========

                  const Center(
                    child: Text(
                      'AuraMed AI provides health information, '
                      'not a medical diagnosis.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),

      // ========== BOTTOM NAVIGATION ==========

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFFE4F1ED),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });

          if (index != 0) {
            final pages = [
              'Home',
              'AI Assistant',
              'Reports',
              'Profile',
            ];

            showComingSoon(pages[index]);
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.smart_toy_outlined),
            label: 'AI Assistant',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_outlined),
            label: 'Reports',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// ================= SERVICE CARD =================

class ServiceCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  final Color iconBackground;
  final VoidCallback onTap;

  const ServiceCard({
    super.key,
    required this.width,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
    required this.iconBackground,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        color: cardColor,
        borderRadius: BorderRadius.circular(19),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(19),
          child: Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              border: Border.all(
                color: const Color(0xFFEAF0EE),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 24,
                  ),
                ),

                const SizedBox(height: 17),

                Text(
                  title,
                  style: const TextStyle(
                    color: dark,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: secondaryText,
                    fontSize: 11,
                  ),
                ),

                const SizedBox(height: 12),

                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 17,
                  color: primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
