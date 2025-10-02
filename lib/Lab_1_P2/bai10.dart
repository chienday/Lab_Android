import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  Widget _buildWorkoutCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String time,
    required String assetImage,
    required int completed,
    required int total,
    Color? imageBg,
  }) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 8),
                  Text('$subtitle\n$time',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      )),
                  const SizedBox(height: 12),

                  // progress row
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: total == 0 ? 0 : (completed / total).clamp(0.0, 1.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: theme.primaryColor.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('$completed/$total', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // image on the right
          Container(
            width: 120,
            height: 96,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: imageBg ?? Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: assetImage.isNotEmpty
                ? Image.asset(assetImage, fit: BoxFit.cover, errorBuilder: (c, e, s) {
                    // fallback placeholder
                    return Container(color: imageBg ?? Colors.blue[100]);
                  })
                : Container(color: imageBg ?? Colors.blue[100]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'title': 'Yoga',
        'subtitle': '3 Exercises',
        'time': '12 Minutes',
        'img': 'assets/images/tui1.jpg',
        'completed': 0,
        'total': 3,
        'bg': Colors.purple[50],
      },
      {
        'title': 'Pilates',
        'subtitle': '4 Exercises',
        'time': '14 Minutes',
        'img': 'assets/images/hehe.png',
        'completed': 0,
        'total': 4,
        'bg': Colors.deepPurple[50],
      },
      {
        'title': 'Full body',
        'subtitle': '3 Exercises',
        'time': '12 Minutes',
        'img': 'assets/images/tui.png',
        'completed': 0,
        'total': 3,
        'bg': Colors.teal[50],
      },
      {
        'title': 'Stretching',
        'subtitle': '5 Exercises',
        'time': '16 Minutes',
        'img': '',
        'completed': 0,
        'total': 5,
        'bg': Colors.pink[50],
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Workouts', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final it = items[index];
            return _buildWorkoutCard(
              context: context,
              title: it['title'] as String,
              subtitle: it['subtitle'] as String,
              time: it['time'] as String,
              assetImage: it['img'] as String,
              completed: it['completed'] as int,
              total: it['total'] as int,
              imageBg: it['bg'] as Color?,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined), label: 'Workouts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Setting'),
        ],
        currentIndex: 1,
      ),
    );
  }
}
