import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CharacterText extends StatelessWidget
{
  final String name;
  final String script;

  const CharacterText({
    super.key,
    required this.name,
    required this.script,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Text(
              script,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ],
    );
  }
}