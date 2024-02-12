import 'package:flutter/material.dart';
import 'package:webportfolio/function/function.dart';
import 'package:webportfolio/model/projcet.dart';

class ProjectTile extends StatelessWidget {
  final Project project;
  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: InkWell(
          onTap: () => pfFunction().launchURL(project.gitURL),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  project.image,
                ),
              ),
              Text(
                project.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: pfFunction().calcResponsiveSize(context, mobile: 16, tablet: 18, desktop: 18)!,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                project.team,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onErrorContainer,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                project.term,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                project.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}