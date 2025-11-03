import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // for input formatters
import 'package:flutter_application_1/src/presentation/screens/widgets/buildInputField.dart';

class screen_two extends StatelessWidget {
  const screen_two({super.key});

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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Recent Transactions Button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF2196F3)),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE3F2FD),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF2196F3)),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Two toggle buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2196F3),
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text('Select Beneficiary'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE0E0E0),
                        foregroundColor: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text('Other Number'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Dropdown: My Number
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.account_balance_wallet),
                  title: const Text('My Number'),
                  trailing: const Icon(Icons.arrow_drop_down),
                  onTap: () {},
                ),
              ),

              const SizedBox(height: 16),

              // Dropdown: Bank account
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

              const SizedBox(height: 16),

              // UGX Amount (numbers only)
              buildInputField(
                label: 'UGX',
                hint: 'Amount',
                digitsOnly: true,
              ),

              const SizedBox(height: 16),

              // Narration
              buildInputField(
                label: 'Narration',
                hint: 'Optional note',
              ),

              const SizedBox(height: 16),

              // PIN
              buildInputField(
                label: 'PIN',
                obscure: true,
                prefixIcon: Icons.lock,
                digitsOnly: true,
              ),

              const SizedBox(height: 30),

              // SEND button
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
