import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App - Davide Perrotta',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: Material(
          color: Colors.transparent,
          child: SingleChildScrollView(child: CustomComponent())),
    );
  }
}

final containerWidth = 500.0;

TextStyle titleStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
  letterSpacing: 3,
  height: 3,
);

TextStyle descriptionStyle = TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black);

class LeftColumn extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Column(
      children: [
        Text(
          'PERSONAL EXPERIENCES',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            'I’m a qualified ICT Engineer with Engineering Master’s Degree. I have relevant experience as Technical Leader and Developer, working as Frontend, Backend and Mobile Developer, using Cloud solutions. My functional roles are coordination among company management, customers management and development team to target the customers needs. I love coding and working with high skilled teams. I was born in 1991 in Catanzaro (Italy), and I work in digital industry from 2014, started at University. \n\nMy hobbies are coding, playing bass guitar and electric guitar in a band, doing some sports like running, mountain biking, kayaking, and reading books.',
            style: descriptionStyle,
          ),
        ),
        Text(
          'SKILLS',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            '- Software Development\n' +
                '- Architecture Design\n' +
                '- Database Development\n' +
                '- Technical management\n' +
                '- Training\n',
            style: descriptionStyle,
          ),
        ),
        Text(
          'RELEVANT EXPERIENCES',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            '- Development of frontend, backend, mobile applications\n' +
                '- Design and development of relational and non-relational databases (SQL and NoSQL)\n' +
                '- Performance analysis of application loads, development of caching solutions to improve performance\n' +
                '- Development of solutions for securing applications (Penetration Testing)\n' +
                '- Design and development of Cloud infrastructure solutions on AWS\n' +
                '- Coordination of the development team and trainer for junior and middle resources of the team\n' +
                '- Analysis of customer requirements, drafting of technical solutions and cost estimates\n',
            style: descriptionStyle,
          ),
        ),
      ],
    );
  }
}

class RightColumn extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Column (
      children: [
        Text(
          'PROFESSIONAL EXPERIENCES',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            'Technical Leader, Full Stack Developer\nDeloitte Digital - (July 2018 - now) \nTechnical leader, lead developer for frontend, backend and mobile projects. Cloud architectures designer \nMain skills: JavaScript, TypeScript, React, React Native, Sass, NextJS, NestJS, Flutter, NodeJS, Redis, WebSocket, MongoDB, AWS Cloud, Docker, CI/CD, Python\n',
            style: descriptionStyle,
          ),
        ),
        Container(
          width: containerWidth,
          child: Text(
            'Frontend Developer \nThinkOpen SPA - (October 2017 - July 2018) \nDeveloper for public administrations and banking platforms. Frontend developer \nMain skills: JavaScript, Sass, jQuery, Java, React\n',
            style: descriptionStyle,
          ),
        ),
        Container(
          width: containerWidth,
          child: Text(
            'Full Stack Developer \nFreelance for web agencies - (March 2015 - April 2017) \nBackend and Frontend developer for e-commerce platforms. \nMain skills: PHP, Apache, Linux, MySQL, WordPress and others PHP based CMS\n',
            style: descriptionStyle,
          ),
        ),
        Text(
          'TRAINING',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            'Politecnico di Milano, 2023 \nState exam for qualification of ICT Engineer \n\nUniversità Magna Graecia di Catanzaro, 2017 \nMaster’s Degree in Biomedical Engineering, 106/110 \n\nUniversità Magna Graecia di Catanzaro, 2015 \nBachelor Degree in Computer and Biomedical Engineering, 86/110 \n\nScientific High School Luigi Siciliani, Catanzaro, 2005 - 2010\n',
            style: descriptionStyle,
          ),
        ),
        Text(
          'CERTIFICATIONS',
          style: titleStyle,
        ),
        Container(
          width: containerWidth,
          child: Text(
            '- AWS Cloud Practitioner \n- Adobe Experience Manager Sites Developer \n- Salesforce AI Associate \n- Business English Level 10/10 by Learnship\n',
            style: descriptionStyle,
          ),
        ),
      ]
    );
  }
}

class CustomComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),*/
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Davide Perrotta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Developer, Tech Lead',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Milano, Italy',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'www.davideperrotta.it',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Expanded(
                child: Column(children: [
                LeftColumn(),
            ])),
            Expanded(
                child: Column(
              children: [
                RightColumn(),
              ],
            ))
          ])
        ]));
  }
}