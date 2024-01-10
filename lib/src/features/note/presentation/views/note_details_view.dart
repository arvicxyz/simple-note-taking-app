import 'package:flutter/material.dart';

class NoteDetailsView extends StatelessWidget {
  final int id;

  const NoteDetailsView({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.blue,
    );
  }
}
