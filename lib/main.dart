import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/options_cubit.dart';
import 'customComponent.dart';

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
      routes: {
        '/': (context) => const Material(
            child: SingleChildScrollView(
                child: MainPageComponent(customColor: Colors.white))),
        '/dark': (context) => const Material(
            child: SingleChildScrollView(
                child: MainPageComponent(customColor: Colors.black))),
        '/cubit': (context) => Material(
              child: MultiBlocProvider(providers: [
                BlocProvider(
                  create: (context) => OptionsCubit(),
                ),
                BlocProvider(
                  create: (context) => ApiCubit(),
                ),
              ], child: const SingleChildScrollView(child: CubitComponent())),
            )
      },
    );
  }
}

TextStyle titleStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
  letterSpacing: 3,
  height: 2,
);

const separatorHeight = 30.0;

class LeftColumn extends StatelessWidget {
  final Color textColor;

  const LeftColumn({super.key, required this.textColor});

  @override
  Widget build(BuildContext context) {
    TextStyle descriptionStyle = TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: textColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PERSONAL EXPERIENCES',
          style: titleStyle,
        ),
        Container(
          child: Text(
            'I’m a qualified ICT Engineer with Engineering Master’s Degree. I have relevant experience as Technical Leader and Developer, working as Frontend, Backend and Mobile Developer, using Cloud solutions. My functional roles are coordination among company management, customers management and development team to target the customers needs. I love coding and working with high skilled teams. I was born in 1991 in Catanzaro (Italy), and I have been working in digital industry since 2014, started at University. \n\nMy hobbies are coding, playing bass guitar and electric guitar in a band, doing some sports like running, mountain biking, kayaking, and reading books.',
            style: descriptionStyle,
          ),
        ),
        const SizedBox(height: separatorHeight),
        Text(
          'SKILLS',
          style: titleStyle,
        ),
        Container(
          child: Text(
            '- Software Development\n- Architecture Design\n- Database Development\n- Technical management\n- Training',
            style: descriptionStyle,
          ),
        ),
        const SizedBox(height: separatorHeight),
        Text(
          'RELEVANT EXPERIENCES',
          style: titleStyle,
        ),
        Container(
          child: Text(
            '- Development of frontend, backend, mobile applications\n- Design and development of relational and non-relational databases (SQL and NoSQL)\n- Performance analysis of application loads, development of caching solutions to improve performance\n- Development of solutions for securing applications (Penetration Testing)\n- Design and development of Cloud infrastructure solutions on AWS\n- Coordination of the development team and trainer for junior and middle resources of the team\n- Analysis of customer requirements, drafting of technical solutions and cost estimates',
            style: descriptionStyle,
          ),
        ),
        const SizedBox(height: separatorHeight),
      ],
    );
  }
}

class RightColumn extends StatelessWidget {
  final Color textColor;

  const RightColumn({super.key, required this.textColor});

  @override
  Widget build(BuildContext context) {
    TextStyle descriptionStyle = TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: textColor);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'PROFESSIONAL EXPERIENCES',
        style: titleStyle,
      ),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deloitte Digital - (July 2018 - now)',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            )),
          ),
          Text(
            'Technical Leader, Full Stack Developer',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'Lead developer for frontend, backend and mobile projects. Cloud architectures designer',
            style: descriptionStyle,
          ),
          Text(
            'Main skills: JavaScript, TypeScript, React, React Native, Sass, NextJS, NestJS, Flutter, NodeJS, Redis, WebSocket, MongoDB, AWS Cloud, Docker, CI/CD, Python',
            style: descriptionStyle.merge(const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 14,
            )),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ThinkOpen SPA - (October 2017 - July 2018)',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            )),
          ),
          Text(
            'Frontend Developer',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'Developer for public administrations and banking platforms',
            style: descriptionStyle,
          ),
          Text(
            'Main skills: JavaScript, Sass, jQuery, Java, React',
            style: descriptionStyle.merge(const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 14,
            )),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Freelancer for web agencies - (March 2015 - April 2017)',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            )),
          ),
          Text(
            'Full Stack Developer',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'Backend and Frontend developer for e-commerce platforms',
            style: descriptionStyle,
          ),
          Text(
            'Main skills: PHP, Apache, Linux, MySQL, WordPress and others PHP based CMS, web hosting',
            style: descriptionStyle.merge(const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 14,
            )),
          ),
        ],
      ) /*Text(
          style: descriptionStyle,
        ),*/
          ),
      const SizedBox(height: separatorHeight),
      Text(
        'TRAINING',
        style: titleStyle,
      ),
      Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Politecnico di Milano, 2023 ',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'State exam for qualification of ICT Engineer',
            style: descriptionStyle,
          ),
          const SizedBox(height: 20),
          Text(
            'Università Magna Graecia di Catanzaro, 2017 ',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'Master’s Degree in Biomedical Engineering, 106/110',
            style: descriptionStyle,
          ),
          const SizedBox(height: 20),
          Text(
            'Università Magna Graecia di Catanzaro, 2015',
            style: descriptionStyle.merge(const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          Text(
            'Bachelor Degree in Computer and Biomedical Engineering',
            style: descriptionStyle,
          ),
          const SizedBox(height: 20),
          Text(
            'Scientific High School Luigi Siciliani, Catanzaro, 2005 - 2010',
            style: descriptionStyle,
          )
        ]),
      ),
      const SizedBox(height: separatorHeight),
      Text(
        'CERTIFICATIONS',
        style: titleStyle,
      ),
      Container(
        child: Text(
          '- AWS Cloud Practitioner \n- Adobe Experience Manager Sites Developer \n- Salesforce AI Associate \n- Business English Level 10/10 by Learnship',
          style: descriptionStyle,
        ),
      ),
      const SizedBox(height: separatorHeight),
    ]);
  }
}

class MainPageComponent extends StatelessWidget {
  final Color? customColor;
  const MainPageComponent({super.key, required this.customColor});

  @override
  Widget build(BuildContext context) {
    Color textColor =
        (customColor == Colors.black) ? Colors.white : Colors.black;
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: customColor,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 30.0,
              bottom: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Davide Perrotta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: textColor,
                        ),
                      ),
                      Text(
                        'Developer, Tech Lead',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: textColor,
                        ),
                      ),
                      Text(
                        'Milano, Italy',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: textColor,
                        ),
                      ),
                      const Text(
                        'www.davideperrotta.it',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    customColor == Colors.white
                        ? ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/dark');
                            },
                            child: const Text('Dark theme'),
                          )
                        : ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: const Text('Light theme'),
                          ),
                  ],
                ),
              ],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:
                      ResponsiveBuilder(builder: (context, sizingInformation) {
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop) {
                      return Container(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(children: [
                                    LeftColumn(textColor: textColor),
                                  ]))),
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      RightColumn(textColor: textColor),
                                    ],
                                  ))),
                        ],
                      ));
                    } else {
                      return Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  LeftColumn(textColor: textColor),
                                  RightColumn(textColor: textColor),
                                ],
                              )),
                        ],
                      );
                    }
                  }),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/flutter-192.png',
                    width: 40,
                    height: 40,
                  ),
                  const Text(
                    'made by Davide with Flutter',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              )
            ],
          )
        ]));
  }
}
