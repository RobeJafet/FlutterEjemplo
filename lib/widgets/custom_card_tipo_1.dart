import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              "Aliqua cillum deserunt nostrud pariatur sit est dolor laborum nostrud laboris laborum nostrud. Irure laborum culpa quis voluptate officia Lorem consequat sunt quis adipisicing non reprehenderit. Labore veniam eiusmod ut nulla laboris voluptate eiusmod enim laboris sit culpa sunt non esse. Excepteur nostrud anim fugiat cupidatat occaecat velit esse ad."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        )
      ]),
    );
  }
}
