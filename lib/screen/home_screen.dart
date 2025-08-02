import 'package:flutter/material.dart';

void main() => runApp(const FocusTimerApp());

class FocusTimerApp extends StatelessWidget {
  const FocusTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '집중 타이머',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0E1E28),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      ),
      home: const FocusTimerScreen(),
    );
  }
}

class FocusTimerScreen extends StatelessWidget {
  const FocusTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('집중 타이머'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: 4.15 / 7.0,
            backgroundColor: Colors.grey.shade800,
            valueColor: AlwaysStoppedAnimation(Colors.tealAccent),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: CircularProgressIndicator(
                    strokeWidth: 12,
                    value: 0.77,
                    backgroundColor: Colors.teal.shade900,
                    valueColor: AlwaysStoppedAnimation(Colors.tealAccent),
                  ),
                ),
                Column(
                  children: const [
                    Text('집중 중 (3/4)', style: TextStyle(fontSize: 16, color: Colors.white70)),
                    SizedBox(height: 4),
                    Text('18:34', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          IconButton(
            iconSize: 48,
            icon: const Icon(Icons.play_circle_fill, color: Colors.orangeAccent),
            onPressed: () {},
          ),
          const Text('일시 정지됨', style: TextStyle(color: Colors.white60)),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.tealAccent),
                color: const Color(0xFF142C39),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(Icons.check_circle, color: Colors.tealAccent),
                  SizedBox(width: 8),
                  Expanded(child: Text('앱 개발', style: TextStyle(fontSize: 16))),
                  Text('00:43', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0E1E28),
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 0,
        onTap: (index) {
          // 화면 전환 샘플
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChecklistScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProgressScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.hourglass_bottom), label: '집중 타이머'),
          BottomNavigationBarItem(icon: Icon(Icons.checklist), label: '체크리스트'),
          BottomNavigationBarItem(icon: Icon(Icons.insights), label: '일일 진행률'),
        ],
      ),
    );
  }
}

class ChecklistScreen extends StatelessWidget {
  const ChecklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('체크리스트')),
      body: const Center(child: Text('체크리스트 화면')),
    );
  }
}

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('일일 진행률')),
      body: const Center(child: Text('일일 진행률 화면')),
    );
  }
}