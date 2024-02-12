import 'dart:ui';

import 'package:simple_icons/simple_icons.dart';
import 'package:webportfolio/model/more.dart';
import 'package:webportfolio/model/projcet.dart';

class Mydata{
    static const String emailAddress = 'kmsoo0704@gmail.com';

  // 프로필 데이터
  static const List<MapEntry<String, String>> profile = [
    MapEntry('이름', '김민수'),
    MapEntry('생년월일', '1993년 07월 04일'),
    MapEntry('거주지', '서울특별시 강남구'),
    MapEntry('학력', '숭실대학교 컴퓨터공학과'),
  ];

  static const Map<String, dynamic> stacks = {
    // Skills
    'language': [
      {
        'label': 'Dart',
        'icon': SimpleIcons.dart,
        'color': SimpleIconColors.dart
      },
      {
        'label': 'Python',
        'icon': SimpleIcons.python,
        'color': SimpleIconColors.python
      },
      {
        'label': 'Java',
        'icon': SimpleIcons.coffeescript,
        'color': SimpleIconColors.coffeescript
      },
      {
        'label': 'Swift',
        'icon': SimpleIcons.swift,
        'color': SimpleIconColors.swift
      },
      {
        'label': 'JavaScript',
        'icon': SimpleIcons.javascript,
        'color': Color.fromARGB(255, 0, 0, 0)
      },
      {
        'label': 'HTML5',
        'icon': SimpleIcons.html5,
        'color': SimpleIconColors.html5
      },
      {'label': 'R', 'icon': SimpleIcons.r, 'color': SimpleIconColors.r},
    ],
    // 프레임워크 스택
    'Frontend': [
      {
        'label': 'Flutter',
        'icon': SimpleIcons.flutter,
        'color': SimpleIconColors.flutter
      },
      {
        'label': 'UIkit',
        'icon': SimpleIcons.uikit,
        'color': SimpleIconColors.uikit
      },
    ],
    // Backend 스택
    'Backend': [
      {
        'label': 'MySQL',
        'icon': SimpleIcons.mysql,
        'color': SimpleIconColors.mysql
      },
      {
        'label': 'Firebase',
        'icon': SimpleIcons.firebase,
        'color': SimpleIconColors.firebase
      },
      {
        'label': 'SQLite',
        'icon': SimpleIcons.sqlite,
        'color': SimpleIconColors.sqlite
      },
      {
        'label': 'fastapi',
        'icon': SimpleIcons.fastapi,
        'color': SimpleIconColors.fastapi
      },
      {
        'label': 'Spring Boot',
        'icon': SimpleIcons.springboot,
        'color': SimpleIconColors.springboot
      },
      {
        'label': 'Flask',
        'icon': SimpleIcons.flask,
        'color': SimpleIconColors.flask
      },
      {
        'label': 'MyBatis',
        'icon': SimpleIcons.twitter,
        'color': SimpleIconColors.twitter
      },
      {
        'label': 'Apache Tomcat',
        'icon': SimpleIcons.apachetomcat,
        'color': SimpleIconColors.apachetomcat
      },
      {
        'label': 'AWS-EC2',
        'icon': SimpleIcons.awsorganizations,
        'color': SimpleIconColors.awsorganizations
      },
      {
        'label': 'AWS-RDS',
        'icon': SimpleIcons.awslambda,
        'color': SimpleIconColors.awslambda
      },
      {
        'label': 'JSP',
        'icon': SimpleIcons.javascript,
        'color': SimpleIcons.javascript
      }
      
      // {
      //   'label': 'Keras',
      //   'icon': SimpleIcons.keras,
      //   'color': SimpleIconColors.keras
      // },
      // {
      //   'label': 'Tensorflow',
      //   'icon': SimpleIcons.tensorflow,
      //   'color': SimpleIconColors.tensorflow
      // },
      // {
      //   'label': 'Scikit-learn',
      //   'icon': SimpleIcons.scikitlearn,
      //   'color': SimpleIconColors.scikitlearn
      // },
      // {
      //   'label': 'Numpy',
      //   'icon': SimpleIcons.numpy,
      //   'color': SimpleIconColors.numpy
      // },
      // {
      //   'label': 'Pandas',
      //   'icon': SimpleIcons.pandas,
      //   'color': SimpleIconColors.pandas
      // },
    ],
    // 툴 스택
    'tools': [
      {
        'label': 'XCode', 
        'icon': SimpleIcons.xcode, 
        'color': SimpleIconColors.xcode
      },
      {
        'label': 'VSCode', 
        'icon': SimpleIcons.visualstudiocode, 
        'color': SimpleIconColors.visualstudiocode
      },
      {
        'label': 'Eclipse', 
        'icon': SimpleIcons.eclipseide, 
        'color': SimpleIconColors.eclipseide
      },
      {
        'label': 'Google Colab',
        'icon': SimpleIcons.googlecolab,
        'color': SimpleIconColors.googlecolab
      },
      {
        'label': 'Git', 
        'icon': SimpleIcons.git, 
        'color': SimpleIconColors.git
      },
      {
        'label': 'Github',
        'icon': SimpleIcons.github,
        'color': SimpleIconColors.github
      },
      {
        'label': 'Notion',
        'icon': SimpleIcons.notion,
        'color': SimpleIconColors.notion
      },
      {
        'label': 'Slack',
        'icon': SimpleIcons.slack,
        'color': SimpleIconColors.slack
      },
      {
        'label': 'Fork',
        'icon': SimpleIcons.sourcetree,
        'color': SimpleIconColors.sourcetree
      },
      {
        'label': 'Miro',
        'icon': SimpleIcons.miro,
        'color': SimpleIconColors.miro
      },
      {
        'label': 'Figma',
        'icon': SimpleIcons.figma,
        'color': SimpleIconColors.figma
      },
      {
        'label': 'PhotoShop',
        'icon': SimpleIcons.photopea,
        'color': SimpleIconColors.photopea
      },
    ],
  };

  // 프로젝트 데이터
  static final List<Project> projects = [
    Project(
      title: "",
      image: "",
      term: "",
      team: "",
      description: "",
      notionURL:
          "",
    ),
  ];

  // more_block 데이터
  static final List<More> mores = [
    More(
      title: 'GitHub',
      url: '',
      icon: SimpleIcons.github,
      iconColor: SimpleIconColors.github,
    ),
    More(
      title: 'Video',
      url: '',
      icon: SimpleIcons.youtube,
      iconColor: SimpleIconColors.youtube,
    ),
    More(
      title: 'Notion',
      url:
          '',
      icon: SimpleIcons.notion,
      iconColor: SimpleIconColors.notion,
    ),
  ];
}