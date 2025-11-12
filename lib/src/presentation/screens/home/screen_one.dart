import 'package:DemoApp/src/data/repositories/save_repo.dart';
import 'package:DemoApp/src/data/services/save_service.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DemoApp/src/bloc/save_bloc.dart';
import 'package:DemoApp/src/bloc/save_event.dart';
import 'package:DemoApp/src/bloc/save_state.dart';
import 'package:DemoApp/src/presentation/screens/widgets/buildInputField.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final amountController = TextEditingController();
  final narrationController = TextEditingController();
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SaveBloc(SaveRepository(ApiService())),
      child: BlocConsumer<SaveBloc, SaveState>(
        listener: (context, state) {
          if (state is SaveSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is SaveFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
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
                actions: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const screen_two()),
                      );
                    },
                  ),
                ],
              ),

            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildInputField(
                      label: 'Name',
                      hint: 'Enter full name',
                      controller: nameController,
                    ),
                    const SizedBox(height: 20),
                    buildInputField(
                      label: 'Send to',
                      hint: 'Enter phone number',
                      controller: phoneController,
                      digitsOnly: true,
                    ),
                    const SizedBox(height: 20),
                    buildInputField(
                      label: 'UGX Amount',
                      hint: 'Enter amount',
                      controller: amountController,
                      digitsOnly: true,
                    ),
                    const SizedBox(height: 20),
                    buildInputField(
                      label: 'Narration',
                      hint: 'Optional message',
                      controller: narrationController,
                    ),
                    const SizedBox(height: 20),
                    buildInputField(
                      label: 'PIN',
                      hint: 'Enter your PIN',
                      controller: pinController,
                      obscure: true,
                      prefixIcon: Icons.lock,
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: state is SaveLoading
                            ? null
                            : () {
                                context.read<SaveBloc>().add(
                                      SubmitSaveEvent(
                                        name: nameController.text,
                                        phone: phoneController.text,
                                        amount: amountController.text,
                                        narration: narrationController.text,
                                        pin: pinController.text,
                                      ),
                                    );
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2196F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: state is SaveLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text(
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
      ),
    );
  }
}
