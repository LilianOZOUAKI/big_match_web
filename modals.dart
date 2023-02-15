class PlayerStats {
  final int goals;
  final int assists;
  final int yellowCards;
  final int redCards;
  final int gamesPlayed;

  PlayerStats({
    required this.goals,
    required this.assists,
    required this.yellowCards,
    required this.redCards,
    required this.gamesPlayed,
  });
}

class Player {
  final int id;
  final String name;
  final String nationality;
  final int age;
  final String position;
  final String club;
  final String imageUrl;
  final int shirtNumber;
  final PlayerStats stats;

  Player({
    required this.id,
    required this.name,
    required this.nationality,
    required this.age,
    required this.position,
    required this.club,
    required this.imageUrl,
    required this.shirtNumber,
    required this.stats,
  });
}

class Coach {
  final int id;
  final String name;
  final int age;
  final String nationality;
  final String imageUrl;
  final int yearsOfExperience;

  Coach({
    required this.id,
    required this.name,
    required this.age,
    required this.nationality,
    required this.imageUrl,
    required this.yearsOfExperience,
  });
}

class President {
  final int id;
  final String name;
  final int age;
  final String nationality;
  final String imageUrl;
  final int yearsInOffice;

  President({
    required this.id,
    required this.name,
    required this.age,
    required this.nationality,
    required this.imageUrl,
    required this.yearsInOffice,
  });
}

class Stadium {
  final int id;
  final String name;
  final String location;
  final int capacity;
  final String imageUrl;
  final String surface;
  final int yearBuilt;

  Stadium({
    required this.id,
    required this.name,
    required this.location,
    required this.capacity,
    required this.imageUrl,
    required this.surface,
    required this.yearBuilt,
  });
}

class TeamStats {
  final int wins;
  final int draws;
  final int losses;
  final int goalsFor;
  final int goalsAgainst;

  TeamStats({
    required this.wins,
    required this.draws,
    required this.losses,
    required this.goalsFor,
    required this.goalsAgainst,
  });
}

class Team {
  final int id;
  final String name;
  final String logoUrl;
  final List<Player> players;
  final Coach coach;
  final Stadium stadium;
  final TeamStats stats;
  final President president;
  final List<String> clubColors;

  Team({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.players,
    required this.coach,
    required this.stadium,
    required this.stats,
    required this.president,
    required this.clubColors,
  });
}
