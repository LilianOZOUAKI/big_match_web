import 'package:flutter/material.dart';

class TeamView extends StatelessWidget {
  final Team team;

  const TeamView({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          team.logoUrl,
          height: 100,
          width: 100,
        ),
        const SizedBox(height: 8),
        Text(
          team.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeamLabel(
              text: '${team.wins} Victoires',
              backgroundColor: Colors.green,
            ),
            const SizedBox(width: 16),
            TeamLabel(
              text: '${team.losses} Défaites',
              backgroundColor: Colors.red,
            ),
            const SizedBox(width: 16),
            TeamLabel(
              text: '${team.points} Points',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}

class TeamLabel extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final IconData? icon;

  const TeamLabel({
    Key? key,
    required this.text,
    required this.backgroundColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(icon, color: Colors.white, size: 20),
          if (icon != null) const SizedBox(width: 4),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
