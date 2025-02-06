import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import '../models/surah_model.dart';

class ApiService {
  final String baseUrl = 'https://api.alquran.cloud/v1/surah';

  Future<List<Surah>> fetchSurahList() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'] as List;
      return data.map((json) => Surah.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Surah list');
    }
  }
}