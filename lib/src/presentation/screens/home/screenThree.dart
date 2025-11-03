import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    // Colors used in screenshot
    const Color primaryBlue = Color(0xFF2196F3);
    const double blueBarHeight = 28; // small strip like device status bar in image

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Blue strip at very top (mimic status bar / top accent)
          Container(
            height: blueBarHeight,
            color: primaryBlue,
            // we intentionally leave this empty: it simply provides the blue status strip
          ),

          // White area below with avatar, texts and action icons
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                // Avatar circle
                CircleAvatar(
                  radius: 22,
                  backgroundColor: primaryBlue,
                  child: const Text(
                    'H', // replace with user initial or Image
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(width: 12),

                // Name + last login stacked vertically
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      // "Hello <name>" line (name in bold; small green dot can be added)
                      Row(
                        children: [
                          Text(
                            'Hello ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          // Name text
                          Text(
                            'Isaac', // replace programmatically
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(width: 6),
                          // optional green status dot
                          // Container(width:6, height:6, decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle))
                        ],
                      ),

                      SizedBox(height: 4),

                      // Last login line (light, smaller)
                      Text(
                        'Last Login Dec  2 2024  7:55PM',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),

                // Action icons on the right: bell and power
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      color: Colors.black54,
                      onPressed: () {
                        // handle notification tap
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.power_settings_new),
                      color: Colors.black54,
                      onPressed: () {
                        // handle logout/power tap
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Divider below header area to separate rest of UI (optional)
          const Divider(height: 1, color: Color(0xFFEDEDED)),

          // The remainder of the screen (placeholder)
          Expanded(
            child: Center(
              child: Text(
                'Screen content goes here',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
