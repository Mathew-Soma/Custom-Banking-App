import 'package:DemoApp/src/data/services/save_service.dart';

class SaveRepository {
  final ApiService apiService;

  SaveRepository(this.apiService);

  Future<Map<String, dynamic>> saveTransfer({
    required String name,
    required String phone,
    required String amount,
    required String narration,
    required String pin,
  }) async {
    final data = {
      'name': name,
      'phone': phone,
      'amount': amount,
      'narration': narration,
      'pin': pin,
    };
    return await apiService.saveTransfer(data);
  }
}
