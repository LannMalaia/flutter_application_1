import 'package:flutter/material.dart';
import 'package:flutter_application_1/option.dart';
import 'package:provider/provider.dart';
import '../util/mala_fonts.dart';

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
    final theme = Theme.of(context);
    Option option = context.watch<Option>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(children: [
          Card(
            color: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(name, style: MalaFonts.getTitleFont(option: option, color: Colors.white),),
            ),
          ),
        ],),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(width: 25,),
          Text(
              script,
              style: MalaFonts.getDescFont(option: option,),
            ),
          ],
        ),
      ],
    );
  }
}