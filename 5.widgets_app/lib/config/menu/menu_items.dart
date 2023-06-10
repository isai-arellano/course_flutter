import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter Screen ',
      subTitle: 'Counter screen with riverpod',
      link: '/counter-riverpod',
      icon: Icons.add),
  MenuItem(
      title: 'Buttons',
      subTitle: 'Buttons in Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subTitle: 'A stylized container',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress indicators',
      subTitle: 'General and controled',
      link: '/progress-indicators',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and dialogs',
      subTitle: 'Indicators in screen',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful widget animated',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Contros + Tiles',
      subTitle: 'A serie of controls Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduction to App ',
      subTitle: 'Tutorial app',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite Scroll and Pull ',
      subTitle: 'Infinite List and Pull refresh',
      link: '/infinite-scroll',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Theme Changer ',
      subTitle: 'Theme changer app',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
