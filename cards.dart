import 'package:flutter/material.dart';
import 'models/team.dart';
import 'views/team_label.dart';

class TeamCard extends StatelessWidget {
  final Team team;

  TeamCard({required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.network(team.logo),
          SizedBox(height: 8.0),
          Text(
            team.name,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamLabel(
                text: 'V',
                value: team.wins.toString(),
                color: Colors.green,
              ),
              TeamLabel(
                text: 'D',
                value: team.losses.toString(),
                color: Colors.red,
              ),
              TeamLabel(
                text: 'Pts',
                value: team.points.toString(),
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
