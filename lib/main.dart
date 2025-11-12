import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_one.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_two.dart';
import 'package:DemoApp/src/data/repositories/save_repo.dart';
import 'package:DemoApp/src/data/services/save_service.dart';
import 'package:DemoApp/src/bloc/save_bloc.dart';

void main() {
  // Initialize dependencies first
  final apiService = ApiService();
  final saveRepository = SaveRepository(apiService);

  runApp(MainApp(repository: saveRepository));
}

class MainApp extends StatelessWidget {
  final SaveRepository repository;

  const MainApp({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // ✅ Provide SaveBloc globally
      create: (context) => SaveBloc(repository),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: screen_two(), // you can change to screen_one if needed
      ),
    );
  }
}
