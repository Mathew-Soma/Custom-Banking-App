import 'package:flutter/material.dart';

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
                  backgroundColor: primaryBlue,
                  child: const Text('H',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
          )
        ],
      ),
    );
  }
}