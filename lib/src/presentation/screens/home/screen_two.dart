import 'package:DemoApp/src/bloc/save_bloc.dart' show SaveBloc;
import 'package:DemoApp/src/bloc/save_event.dart';
import 'package:DemoApp/src/bloc/save_state.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_one.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_three.dart';
import 'package:DemoApp/src/presentation/screens/widgets/buildInputField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ... other imports

class screen_two extends StatelessWidget {
  const screen_two({super.key});

  @override
  Widget build(BuildContext context) {
    final ugxController = TextEditingController();
    final narrationController = TextEditingController();
    final pinController = TextEditingController();

    return BlocConsumer<SaveBloc, SaveState>(
      listener: (context, state) {
        if (state is SaveLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );
        } else if (state is SaveSuccess) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.green),
          );
        } else if (state is SaveFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${state.error}'), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF2196F3),
            title: const Text(
              'MTN Money',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            
            // 👈 Navigation icon on top-left
            leading: IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenOne()),
                );
              },
            ),

            // 👉 Navigation icon on top-right
            actions: [
              IconButton(
                icon: const Icon(Icons.navigate_next, color: Colors.white),
                onPressed: () {
                  Navigator.pushReplacement(
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
                  buildInputField(
                    label: 'UGX',
                    hint: 'Amount',
                    digitsOnly: true,
                    controller: ugxController,
                  ),
                  const SizedBox(height: 16),
                  buildInputField(
                    label: 'Narration',
                    hint: 'Optional note',
                    controller: narrationController,
                  ),
                  const SizedBox(height: 16),
                  buildInputField(
                    label: 'PIN',
                    obscure: true,
                    prefixIcon: Icons.lock,
                    digitsOnly: true,
                    controller: pinController,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final amount = ugxController.text.trim();
                        final narration = narrationController.text.trim();
                        final pin = pinController.text.trim();

                        if (amount.isEmpty || pin.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter both Amount and PIN'),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }

                        print('Sending: {"amount": $amount, "narration": $narration, "pin": $pin}');
                        context.read<SaveBloc>().add(
                              SubmitSaveScreenTwoEvent(
                                amount: amount,
                                narration: narration,
                                pin: pin,
                              ),
                            );
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
      },
    );
  }
}
