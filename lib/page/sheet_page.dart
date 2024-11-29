import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../main.dart';
import '../util/mala_fonts.dart';

class SheetPage extends StatefulWidget {
  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  final TextEditingController _controller = TextEditingController(text: "이것은 이름이다!");

  @override
  Widget build(BuildContext context) {
    context.watch<PageState>();

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...getNameInputs(),
              Divider(),
              ...getIdentityAspectInputs(),
              Divider(),
              ...getProblemAspectInputs(),
              Divider(),
              ...getAspectInputs(),
              Divider(),
              Text("기능"),
              ...getStatInputs(4),
              ...getStatInputs(3),
              ...getStatInputs(2),
              ...getStatInputs(1),
              Divider(),
              Text("특기"),
              ...getSkillInputs(),
              ...getSkillInputs(),
            ],
          )
        )
      )
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> getNameInputs() {
    return [
      Text("이름"),
      getTextField(),
      SizedBox( // 스트레스?
        width: 200, height: 200,
        child: CircularStepProgressIndicator( // HP?
          totalSteps: 8,
          currentStep: 3,
          selectedColor: Colors.red,
          stepSize: 20,
          child: Center(
            child: CircularStepProgressIndicator( // MP?
              totalSteps: 100,
              currentStep: 30,
              selectedColor: Colors.blue,
              stepSize: 20,
              child: Center(
                child: CircularStepProgressIndicator( // FP?
                  totalSteps: 3,
                  currentStep: 3,
                  selectedColor: Colors.purple,
                  stepSize: 20,
                  child: Center(
                    child: Text("HP\naa/aa")
                  )
                )
              )
            )
          )
        )
      )
    ];
  }

  List<Widget> getIdentityAspectInputs() {
    return [
      Text("정체성 면모"),
      getTextField()
    ];
  }
  List<Widget> getProblemAspectInputs() {
    return [
      Text("고민 면모"),
      getTextField(),
      getTextField()
    ];
  }

  List<Widget> getAspectInputs() {
    return [
      Text("면모"),
      getTextField(),
      getTextField(),
      getTextField(),
      getTextField(),
      getTextField()
    ];
  }

  List<Widget> getStatInputs(int level) {
    return [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 60, child: Text("+$level"),),
          ...List.generate(5 - level, (index) {
            return getTextField(width: 50);
          })
        ],
      ),
    ];
  }

  List<Widget> getSkillInputs() {
    return [
      getTextField(width: 300),
      getTextField()
    ];
  }

  Widget getTextField({height = 40, width}) {
    return SizedBox(
        height: height,
        width: width,
        child: TextField(
          controller: _controller,
          enabled: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            // labelText: '이름',
          ),
          style: TextStyle(fontSize: 10)
        ),
      );
  }
}