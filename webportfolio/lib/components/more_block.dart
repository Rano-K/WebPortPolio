import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webportfolio/function/function.dart';
import 'package:webportfolio/model/more.dart';

class MoreBlock extends StatelessWidget {
  final List<More> moreData;
  const MoreBlock({super.key, required this.moreData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Notion & github Link',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // linkButton을 데이터 개수에 맞게 동적으로 생성
              for(int i=0; i<moreData.length; i++)
                _linkButton(context, moreData[i])
            ],
          ),
        ),
      ],
    );
  }
}

Widget _linkButton(context, More more) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      color: Colors.white,
      child: CupertinoButton(
        onPressed: () => pfFunction().launchURL(more.url),
        child: Row(
          children: [
            Icon(
              more.icon,
              color: more.iconColor,
            ),
            Text(
              ' ${more.title}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: pfFunction().calcResponsiveSize(context, mobile: 11, tablet: 14, desktop: 17),
                  color: Colors.black),
            )
          ],
        ),
      ),
    ),
  );
}