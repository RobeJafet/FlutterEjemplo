import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Widget")),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            SizedBox(height: 10),
            CustomCardTipo1(),
            SizedBox(height: 10),
            CustomCardTipo2(
              imageURL:
                  'https://www.creativefabrica.com/wp-content/uploads/2021/03/13/beautiful-landscape-in-sunset-Graphics-9546561-1.jpg',
              name: 'Un hermoso paisaje',
            ),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageURL:
                    'https://media.architecturaldigest.com/photos/58238acb355a259d55d5185d/master/pass/surreal-landscapes-us-01.jpg'),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageURL:
                    'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg'),
            SizedBox(height: 50),
          ]),
    );
  }
}
