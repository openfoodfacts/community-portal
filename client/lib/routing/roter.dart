import 'package:client/routing/routes.dart';
import 'package:client/screens/activegroup/active_group.dart';
import 'package:client/screens/creategroup/create_group.dart';
import 'package:client/screens/joinedgroup/joined_group.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case activeGroupRoute:
        return MaterialPageRoute(builder: (_) => const ActiveGroup());
      case joinedGroupRoute:
        return MaterialPageRoute(builder: (_) => const JoinedGroup());
      case createGroupRoute:
        return MaterialPageRoute(builder: (_) => const CreateGroup());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
