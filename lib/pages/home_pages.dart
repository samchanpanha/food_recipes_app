import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            'FoodRecipe',
            style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800, fontSize: 24, letterSpacing: 0.5),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Good Morning,\nPanha',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  )),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
