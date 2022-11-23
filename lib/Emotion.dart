import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String emotionFace;
  const EmotionFace({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            emotionFace,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
