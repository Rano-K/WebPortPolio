import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webportfolio/components/project_tile.dart';
import 'package:webportfolio/data/mydata.dart';
import 'package:webportfolio/model/projcet.dart';

// ignore: camel_case_types
class pfFunction{
    //url주소 입력시 launching
    launchURL(urlLocation) async{
      Uri uri = Uri.parse(urlLocation);
      if (await canLaunchUrl(uri)){
        await launchURL(uri,);
      }else{
        throw 'could not launch $uri';
      }
    }

    /// mobile, tablet, desktop용 사이즈 입력 시 레이아웃에 맞게 value 리턴해주는 함수
    double? calcResponsiveSize(context,
            {required double mobile,
            required double tablet,
            required double desktop}) =>
        ResponsiveValue(
          context,
          defaultValue: mobile,
          conditionalValues: [
            Condition.largerThan(
              value: tablet,
              name: MOBILE,
            ),
            Condition.largerThan(
              value: desktop,
              name: TABLET,
            ),
          ],
        ).value;




    /// 프로젝트 개수에 맞게 동적으로 ResponsiveRowColumn 리스트를 만들어주는 함수. 한 ResponsiveRowColumn에 두 개 프로젝트씩 들어감.
    List<ResponsiveRowColumn> generateProjectRows(context) {
      List<Project> projects = Mydata.projects;

      // 리턴해줄 빈 ResponsiveRowColumn 리스트 생성
      List<ResponsiveRowColumn> projectRows = [];

      for (int i = 0; i < projects.length; i += 2) { 
        List<ResponsiveRowColumnItem> rowItems = []; // ResponsiveRowColumn의 item이 1개 혹은 2개 들어가기 때문에 

        // 첫 번째 프로젝트
        rowItems.add(
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: ProjectTile(project: projects[i]),
          ),
        );

        if (i + 1 < projects.length) { // 두 번째 프로젝트가 존재한다면 item 추가
          rowItems.add(
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: ProjectTile(project: projects[i + 1]),
            ),
          );
        }

        // item 리스트를 만들었으면 ResponsiveRowColumn에 담아주고 ResponsiveRowColumn를 projectRows에 add
        projectRows.add(
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveBreakpoints.of(context).isDesktop
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: rowItems,
          ),
        );
      }

      return projectRows;
    }
}