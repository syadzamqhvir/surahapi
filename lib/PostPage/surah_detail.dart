import 'package:flutter/material.dart';
import '../models/surah_model.dart';

class SurahDetailScreen extends StatelessWidget {
  final Surah surah;

  const SurahDetailScreen({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(surah.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Surah ${surah.name} (${surah.englishName})',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Translation: ${surah.englishNameTranslation}',
                style: const TextStyle(fontSize: 18)),
            Text('Number of Ayahs: ${surah.numberOfAyahs}',
                style: const TextStyle(fontSize: 18)),
            Text('Revelation Type: ${surah.revelationType}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
