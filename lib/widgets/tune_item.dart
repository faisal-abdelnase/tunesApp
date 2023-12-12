import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.tunes,
  });

  final TuneModel tunes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.playSound();
        },
        child: Container(
          color: tunes.color,
        ),
      ),
    );
  }
}
