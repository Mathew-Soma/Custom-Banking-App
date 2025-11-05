import 'package:DemoApp/src/presentation/screens/home/screen_two.dart';
import 'package:DemoApp/src/presentation/screens/widgets/buildGridServiceIcons.dart';
import 'package:DemoApp/src/presentation/screens/widgets/buldServiceIcons.dart';
import 'package:flutter/material.dart';
class screen_three extends StatelessWidget {
  const screen_three({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF2196F3);
    const double blueBarHeight = 28;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Fixed Top Blue Bar
            Container(
              height: blueBarHeight + 40,
              color: primaryBlue,
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const screen_two()),
                      );
                    },
                  ),
                  // const Text(
                  //   "",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 18,
                  //   ),
                  // ),
                  const SizedBox(width: 40),
                ],
              ),
            ),

            // 🔹 Fixed Hello Section
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/cente.png'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Row(
                          children: [
                            Text(
                              'Hello',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Last Login Dec 2 2025 7:55 am',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications_none),
                        color: Colors.black54,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.power_settings_new),
                        color: Colors.black54,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 🔹 Scrollable Area
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Your existing content below
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
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
                                  color: const Color(0xFF1565C0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons.layers,
                                    color: Colors.white, size: 28),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF2F2F2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons.alarm,
                                    color: Colors.black87, size: 28),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF1565C0),
                                    Color(0xFF1E88E5),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Available Balance",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "UGX XXXXXXX",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(Icons.visibility,
                                          color: Colors.white70, size: 18),
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
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // 🔵 Blue section with circular icons
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 70),
                            decoration: BoxDecoration(
                              color: primaryBlue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildServiceIcon(
                                    assetPath: 'assets/images/mtn.png', label: 'MTN\nMoney'),
                                buildServiceIcon(
                                    assetPath: 'assets/images/airtel.png', label: 'Airtel\nMoney'),
                                buildServiceIcon(
                                    assetPath: 'assets/images/th.png',
                                    label: 'Other\nCentenary\nAccount'),
                                buildServiceIcon(
                                    assetPath: 'assets/images/wlt.png',
                                    label: 'Other\nBank\nTransfers'),
                              ],
                            ),
                          ),

                          // ⚪ White container positioned dynamically
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.18, // responsive height
                            left: 0,
                            right: 0,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 26),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 3,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 10,
                                children: [
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/send-money.png',
                                      label: 'Send Money'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/personal.png',
                                      label: 'CenteMobile\nLoans'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/lamp.png',
                                      label: 'Bill Payments'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/data.png',
                                      label: 'Airtime and \nData Bundles'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/graduated.png',
                                      label: 'School Fees'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/cash-withdrawal.png',
                                      label: 'Agent\nWithdrawal'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/express-delivery.png',
                                      label: 'Cente Xpress'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/payment-method.png',
                                      label: 'Payments\nand Collections'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/hand.png', label: 'Agent\nWithdrawal'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/appeals.png', label: 'Requests'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/transaction-history.png',
                                      label: 'My Transactions'),
                                  buildGridServiceIcon(
                                      imagePath: 'assets/images/account.png',
                                      label: 'Account Setting'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: 160),
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
