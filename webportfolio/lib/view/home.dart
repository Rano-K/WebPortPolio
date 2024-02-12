import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:webportfolio/components/appbar_title.dart';
import 'package:webportfolio/components/more_block.dart';
import 'package:webportfolio/components/portfolio_title.dart';
import 'package:webportfolio/components/profile_card.dart';
import 'package:webportfolio/components/stack_list.dart';
import 'package:webportfolio/data/mydata.dart';
import 'package:webportfolio/function/function.dart';
import 'package:webportfolio/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //프로젝트 갯수에 맞게 동적으로 projectTile을 그려주는 함수(ResponsiveRowColumn 타입의 List)
    List<ResponsiveRowColumn> projectRows = pfFunction().generateProjectRows(context);

    return Scaffold(
      //===APPBAR START===
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
           // 다크모드, 라이트모드 변경 버튼
          IconButton(
              onPressed: () {
                MyApp.themeNotifie.value =
                    MyApp.themeNotifie.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              },
              icon: Icon(MyApp.themeNotifie.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode))
        ],
      ),
  //===APPBAR END===
  body: ListView(
    children: [
      PortfolioTitle(
        title: 'Profile',
        icon: Icons.account_box,
        size: pfFunction().calcResponsiveSize(context,
            mobile: 20, tablet: 25, desktop: 30)!,
      ),
    // 프로필카드
          const Center(
            child: ProfileCard(profileData: Mydata.profile),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          // 기술스택
          Center(
            child: Column(
              children: [
                PortfolioTitle(
                  title: 'Tech Stack',
                  icon: Icons.construction,
                  size: pfFunction().calcResponsiveSize(context,
                      mobile: 20, tablet: 25, desktop: 30)!,
                ),
                const StackList(
                  type: 'language',
                  title: 'Language',
                ),
                const StackList(
                  type: 'Frontend',
                  title: 'Frontend',
                ),
                const StackList(
                  type: 'tools',
                  title: 'tools',
                ),
              ],
            ),
          ),
          const Divider(),
          PortfolioTitle(
            title: 'Project',
            icon: Icons.redeem,
            size: pfFunction().calcResponsiveSize(context,
                mobile: 20, tablet: 25, desktop: 30)!,
          ),
          // 프로젝트 리스트
          Column(
            children: projectRows,
          ),
          //////////////////
          const SizedBox(
            height: 10,
          ),
          ////////////////
          const Divider(),
          ////////////////
          PortfolioTitle(
            title: 'More',
            icon: Icons.more,
            size: pfFunction().calcResponsiveSize(context,
                mobile: 20, tablet: 25, desktop: 30)!,
          ),
          //////////////// 더보기
          Center(child: MoreBlock(moreData: Mydata.mores)),
          ////////////////
          const SizedBox(
            height: 10,
          ),
        ],
  ),
      

    );
  }

}