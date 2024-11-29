import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/option.dart';
import 'package:provider/provider.dart';
import 'script_page.dart';
import 'sheet_page.dart';
import '../util/mala_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    int pageIndex = context.watch<PageState>().pageIndex;
    Widget page = ScriptPage();
    switch (pageIndex) { // 인덱스에 맞춰 각기 다른 페이지를 표시한다
      case 0:
        page = ScriptPage();
        break;
      case 1:
        page = SheetPage();
        break;
      default:
        throw UnimplementedError("no widget for {$pageIndex}");
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SideBar(constraints: constraints,),
              VerticalDivider(width: 1,),
              Expanded( // 페이지
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class SideBar extends StatefulWidget {
  final BoxConstraints constraints;

  SideBar({required this.constraints});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    PageState pageState = context.watch<PageState>();
    Option option = context.watch<Option>();
    double fontSizeValue = option.getFontSize();
    
    return SafeArea(
      child: NavigationRail( // 좌단 내비게이션
        extended: widget.constraints.maxWidth > 800,
        elevation: 5,
        destinations: [
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text('메인', style: MalaFonts.getTitleFont(option: option),),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.person),
            label: Text('시트', style: MalaFonts.getTitleFont(option: option),),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.settings),
            label: Text('설정', style: MalaFonts.getTitleFont(option: option),),
          ),
        ],
        // trailing: Expanded(
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Padding(
        //       padding: EdgeInsets.only(bottom: 0.0),
        //       child: Slider(
        //         value: fontSizeValue,
        //         min: 1, max: 5, divisions: 4,
        //         onChanged: (value) => {
        //           setState(() {
        //             option.changeFontSize(value);
        //           })
        //         },
        //       ),
        //     )
        //   ),
        // ),
        selectedIndex: pageState.pageIndex,
        onDestinationSelected: (value) {
          pageState.changeIndex(value);
        },
      )
    );
  }
}


