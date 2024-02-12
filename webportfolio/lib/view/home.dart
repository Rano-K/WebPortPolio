import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:webportfolio/components/appbar_title.dart';
import 'package:webportfolio/data/mydata.dart';
import 'package:webportfolio/function/function.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //프로젝트 갯수에 맞게 동적으로 projectTile을 그려주는 함수(ResponsiveRowColumn 타입의 List)
    List<ResponsiveRowColumn> porjectRows = pfFunction().generateProjectRows(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: const AppBarTitle(),
        leading: ResponsiveVisibility(
          hiddenConditions: [
            Condition.largerThan(value: (value:false, name: TABLET))
          ],
          child: IconButton(
            onPressed: (){
              //
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          ResponsiveVisibility(
            hiddenConditions: [
              Condition.equals(
                name: MOBILE, 
                value: false,
              ),
            ], 
            child: IconButton(
              onPressed: () => pfFunction().launchURL('mailto:${Mydata.emailAddress}'), 
              icon: const Icon(Icons.mark_email_unread_rounded),
            )
          ),
        ],




      ),
      

    );
  }

}