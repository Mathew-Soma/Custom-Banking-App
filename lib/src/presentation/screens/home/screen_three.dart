import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/screens/widgets/buildGridServiceIcons.dart';
import 'package:flutter_application_1/src/presentation/screens/widgets/buldServiceIcons.dart';

class screen_three extends StatelessWidget {
  const screen_three({super.key});

  @override
  Widget build(BuildContext context) {

    const Color primaryBlue = Color(0xFF2196F3);
    const double blueBarHeight = 28; 

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: blueBarHeight,
            color: primaryBlue,
          ),

          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/cente.png'),
                ),
                const SizedBox(width: 12),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Hello', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 16,),)
                      ],),
                    Text('Last Login Dec 2 2025 7:55 am', style: TextStyle(color: Colors.black54, fontSize: 12))
               ] )),
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
                        // handle notification tap
                      },)
                ],
               )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1565C0), // blue
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.layers, color: Colors.white, size: 28),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2), // light grey
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.alarm, color: Colors.black87, size: 28),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: 
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1565C0), // Deep blue
                        Color(0xFF1E88E5), // Lighter blue gradient
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Available Balance",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "UGX XXXXXXX",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(Icons.visibility, color: Colors.white70, size: 18),
                          SizedBox(width: 6),
                          Text(
                            "Show Balance",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "320XXXXX220",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Mini Statement",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                )

              ],
            ),
          ),
        
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20), // ↓ reduced padding
            decoration: BoxDecoration(
              color: const Color(0xFF2196F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // 👈 keeps icons at the top
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildServiceIcon(assetPath: 'assets/images/mtn.png', label: 'MTN\nMoney'),
                buildServiceIcon(assetPath: 'assets/images/airtel.jpeg', label: 'Airtel\nMoney'),
                buildServiceIcon(assetPath: 'assets/images/mtn.png', label: 'Other\nCentenary\nAccount'),
                buildServiceIcon(assetPath: 'assets/icons/bank.png', label: 'Other\nBank\nTransfers'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}