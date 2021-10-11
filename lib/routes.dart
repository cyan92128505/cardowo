import 'package:flutter/material.dart';

import 'package:cardowo/views/setting/about.dart';
import 'package:cardowo/views/setting/help_page.dart';
import 'package:cardowo/views/setting/policy.dart';
import 'package:cardowo/views/setting/terms_of_use_page.dart';
import 'package:cardowo/views/card/card_editor.dart';
import 'package:cardowo/views/card/card_list.dart';
import 'package:cardowo/views/card/card_sort.dart';
import 'package:cardowo/views/splash_screen.dart';
import 'package:cardowo/views/layout.dart';

class AppRoutes {
  static const splash = '/';
  static const scanner = '/scanner';
  static const home = '/home';
  static const cardDetailCreate = '/card_detail_create';
  static const cardDetailEdit = '/card_detail_edit';
  static const cardList = '/card_list';
  static const settingPermission = '/setting_permission';
  static const settingHelp = '/setting_help';
  static const settingTermsOfUse = '/setting_term_of_use';
  static const settingAbout = '/setting_about';
  static const settingPolicy = '/setting_policy';
  static const settingSort = '/setting_sort';
  static const settingDeveloper = '/setting_developer';
}

class RouteManager {
  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return NoTransitionRoute(
            builder: (_) => const SplashScreen(), settings: settings);
      case AppRoutes.home:
        return NoTransitionRoute(
            builder: (_) => const LayoutPage(), settings: settings);

      case AppRoutes.cardDetailCreate:
        return NoTransitionRoute(
            builder: (_) => const CardEditor(
                  isCreate: true,
                ),
            settings: settings);

      case AppRoutes.cardDetailEdit:
        return NoTransitionRoute(
            builder: (_) => const CardEditor(
                  isCreate: false,
                ),
            settings: settings);

      case AppRoutes.cardList:
        return NoTransitionRoute(
            builder: (_) => const CardList(), settings: settings);
      case AppRoutes.settingHelp:
        return NoTransitionRoute(
            builder: (_) => const HelpPage(), settings: settings);
      case AppRoutes.settingTermsOfUse:
        return NoTransitionRoute(
            builder: (_) => const TermsOfUsePage(), settings: settings);
      case AppRoutes.settingAbout:
        return NoTransitionRoute(
            builder: (_) => const AboutPage(), settings: settings);
      case AppRoutes.settingPolicy:
        return NoTransitionRoute(
            builder: (_) => const PolicyPage(), settings: settings);
      case AppRoutes.settingSort:
        return NoTransitionRoute(
            builder: (_) => const CardSort(), settings: settings);
      default:
        return null;
    }
  }
}

class NoTransitionRoute<T> extends MaterialPageRoute<T> {
  NoTransitionRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

class DialogTransitionRoute<T> extends PageRouteBuilder<T> {
  DialogTransitionRoute({
    required Widget page,
    Color? barrirtColor,
  }) : super(
          opaque: false,
          barrierColor: barrirtColor ?? const Color.fromARGB(127, 22, 22, 22),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: _prepareTransitionsBuilder,
        );

  static Widget _prepareTransitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }
}
