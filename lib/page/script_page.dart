import 'package:flutter/material.dart';
import '../widget/character_text.dart';

class ScriptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // CharacterText(name: "디럭스 파이터", script: "매의 발톱단! 오늘의 너희의 최후의 날이다!"),
            // SizedBox(height: 20,),
            // CharacterText(name: "총통", script: "으응? 설마 이 목소리는!"),
            // SizedBox(height: 20,),
            // CharacterText(name: "디럭스 파이터", script: "그렇다, 디럭스 파이터다!"),
            // SizedBox(height: 20,),
            // CharacterText(name: "디럭스 파이터", script: "그럼 이쯤에서, 디럭스 봄버~!"),
            // SizedBox(height: 20,),
            // CharacterText(name: "총통", script: "빠르잖아!!"),
          ],
        ),
      ),
    );
  }
}

// class BigCard extends StatelessWidget {
//   const BigCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final style = theme.textTheme.displayMedium!.copyWith(
//       color: theme.colorScheme.onPrimary,
//     );

//     return Card(
//       color: theme.colorScheme.primary,
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Text(
//           pair.asLowerCase,
//           style: style,
//           semanticsLabel: "${pair.first} ${pair.second}",
//         ),
//       ),
//     );
//   }
// }
