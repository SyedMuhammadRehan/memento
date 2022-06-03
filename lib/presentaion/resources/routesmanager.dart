import 'package:flutter/material.dart';
import 'package:memento/presentaion/taskscreen/taskscreen.dart';

import 'stringmanager.dart';

class Routes {
  static const String taskscreen = 'taskscreen';
}

class RoutGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.taskscreen:
        return MaterialPageRoute(
          builder: (_) => const TaskScreen(),
        );
      // case Routes.register:
      //   return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      // case Routes.mobileregister:
      //   return MaterialPageRoute(
      //       builder: (_) => const MobileRegistration(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.optscreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const OPTScreen(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teacherwelcomescreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const TeacherWelcome(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teacherhomescreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const TeacherHomeScreen(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teachernotification:
      //   return MaterialPageRoute(
      //       builder: (_) => TeacherNotification(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teacherclassdetails:
      //   return MaterialPageRoute(
      //       builder: (_) => const TeacherClassDetails(
      //             title: 'BSCS',
      //           ),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teacherProfile:
      //   return MaterialPageRoute(
      //       builder: (_) => const TeacherProfile(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.assignmentpage:
      //   return MaterialPageRoute(
      //       builder: (_) => const AssignmentPage(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // // case Routes.quizwidget:
      // //   return MaterialPageRoute(
      // //       builder: (_) => QuestionsWidget(
      // //             category: routeSettings.arguments as TeacherQuizModel,
      // //           ),
      // //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teachercreatQuiz:
      //   return MaterialPageRoute(
      //       builder: (_) => const TeacherCreateQuiz(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.teacherquizcard:
      //   return MaterialPageRoute(
      //       builder: (_) => const QuizCard(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.categorypage:
      //   return MaterialPageRoute(
      //       builder: (_) => CategoryPage(
      //             category: teacherQuizModellist.first,
      //           ),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      // case Routes.quizmarks:
      //   return MaterialPageRoute(
      //       builder: (_) => const StudentQuizMarks(),
      //       settings: RouteSettings(arguments: routeSettings.arguments));
      default:
        return undefinedNameRoute();
    }
  }

  static Route<dynamic> undefinedNameRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Text(AppStrings.noRoute),
            ));
  }
}
