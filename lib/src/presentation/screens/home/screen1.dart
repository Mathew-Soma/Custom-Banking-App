import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/src/presentation/screens/widgets/buildInputField.dart';

// ignore: camel_case_types
class screen_one extends StatelessWidget {
  const screen_one({super.key});

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              buildInputField(label: 'Name', hint: 'Enter full name'),
              const SizedBox(height: 20),

              buildInputField(label: 'Send to', hint: 'Enter phone number', digitsOnly: true),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.account_balance),
                  title: const Text('320XXXX220'),
                  trailing: const Icon(Icons.arrow_drop_down),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 20),

              // Amount field
              buildInputField(label: 'UGX Amount', hint: 'Enter amount', digitsOnly: true),
              const SizedBox(height: 20),

              // Narration field
              buildInputField(label: 'Narration', hint: 'Optional message'),
              const SizedBox(height: 20),

              // PIN field
              buildInputField(
                label: 'PIN',
                hint: 'Enter your PIN',
                obscure: true,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 40),

              // Send button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
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
