import 'package:DemoApp/src/presentation/screens/home/screen_three.dart';
import 'package:DemoApp/src/presentation/screens/widgets/buildInputField.dart';
import 'package:flutter/material.dart';

class screen_two extends StatelessWidget {
  const screen_two({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Define text controllers
    final ugxController = TextEditingController();
    final narrationController = TextEditingController();
    final pinController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        title: const Text(
          'MTN Money',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const screen_three()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ... your other widgets here ...

              buildInputField(
                label: 'UGX',
                hint: 'Amount',
                digitsOnly: true,
                controller: ugxController, // ✅
              ),

              const SizedBox(height: 16),

              buildInputField(
                label: 'Narration',
                hint: 'Optional note',
                controller: narrationController, // ✅
              ),

              const SizedBox(height: 16),

              buildInputField(
                label: 'PIN',
                obscure: true,
                prefixIcon: Icons.lock,
                digitsOnly: true,
                controller: pinController, // ✅
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // ✅ Example: print values to confirm they’re captured
                    print('UGX: ${ugxController.text}');
                    print('Narration: ${narrationController.text}');
                    print('PIN: ${pinController.text}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2196F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'SEND',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
