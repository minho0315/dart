// typedef UserInfo = List<int>;

// void main() {
//   sayHi([1, 2, 3]);
// }

// void sayHi(UserInfo userInfo) {
//   print("hi ${userInfo.length}");
// }

// void main() {
//   var player = Player();
//   player.sayHello();
//   print(player.name);
//   // player.name = "qef";
//   print(player.name);
// }

// class Player {
//   final String name = "minho";
//   int age = 28;
//   void sayHello() {
//     print("Hello, I'm $name, $age");
//   }
// }

// void main() {
//   var player = Player("minho", 28);
//   player.sayHello();
// }

// class Player {
//   final String name;
//   int age;

//   Player(this.name, this.age) {}

//   void sayHello() {
//     print("Hello, I'm $name, $age");
//   }
// }

// void main() {
//   var player = Player(
//     name: "minho",
//     age: 28,
//   );
//   player.sayHello();
// }

// class Player {
//   final String name;
//   int age;

//   Player({
//     required this.name,
//     required this.age,
//   });

//   void sayHello() {
//     print("Hello, I'm $name, $age");
//   }
// }

// void main() {
//   var player = Player.createRedPlayer(
//     name: "minho",
//     age: 28,
//   );
//   player.sayHello();

//   var player2 = Player.createRedPlayer(
//     name: "minho1",
//     age: 12,
//   );
//   player2.sayHello();
// }

// class Player {
//   final String name;
//   int age;
//   String team;
//   int xp;

//   Player({
//     required this.name,
//     required this.age,
//     required this.team,
//     required this.xp,
//   });

//   Player.createRedPlayer({
//     required name,
//     required age,
//   })  : this.name = name,
//         this.age = age,
//         this.team = "red",
//         this.xp = 1000;

//   Player.createBluePlayer(
//     String name,
//     int age,
//   )   : this.name = name,
//         this.age = age,
//         this.team = "Blue",
//         this.xp = 1000;

//   void sayHello() {
//     print("Hello, I'm $name, $age");
//   }
// }

// void main() {
//   var apiData = [
//     {
//       "name": "minho",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "minho1",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "minho2",
//       "team": "red",
//       "xp": 0,
//     }
//   ];

//   apiData.forEach((plyerJson) {
//     var player = Player.fromJson(plyerJson);
//     player.sayHello();
//   });
// }

// class Player {
//   final String name;
//   int xp;
//   String team;

//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson['name'],
//         xp = playerJson['xp'],
//         team = playerJson['team'];

//   void sayHello() {
//     print("Hello, I'm $name");
//   }
// }

// void main() {
//   var minho = Player(name: 'name', team: 'red', xp: 1200);
//   var minho2 = minho
//     ..name = 'mo'
//     ..team = 'blue'
//     ..xp = 1200
//     ..sayHello();
//   print(minho.name);
//   print(minho2.name);
// }

// class Player {
//   String name;
//   String team;
//   int xp;

//   Player({
//     required this.name,
//     required this.team,
//     required this.xp,
//   });

//   void sayHello() {
//     print("Hello, I'm $name");
//   }
// }

// void main() {
//   var minho = Player(name: 'name', team: Team.red, xp: XPLevel.beginner);
//   var minho2 = minho
//     ..name = 'mo'
//     ..team = Team.blue
//     ..xp = XPLevel.pro
//     ..sayHello();
//   print(minho.name);
//   print(minho2.name);
// }

// enum Team { red, blue }

// enum XPLevel { beginner, medium, pro }

// class Player {
//   String name;
//   Team team;
//   XPLevel xp;

//   Player({
//     required this.name,
//     required this.team,
//     required this.xp,
//   });

//   void sayHello() {
//     print("Hello, I'm $name");
//   }
// }

// void main() {
//   var minho = Player(name: 'minho', team: Team.red);
//   minho.sayHello();
// }

// class Human {
//   String name;

//   Human(
//     this.name,
//   );

//   void sayHello() {
//     print("Hello, I'm $name");
//   }
// }

// enum Team { red, blue }

// class Player extends Human {
//   Team team;

//   Player({
//     required String name,
//     required this.team,
//   }) : super(name);

//   void sayHello() {
//     super.sayHello();
//     print("my team is $team");
//   }
// }

void main() {
  var minho = Player(team: Team.red);
  minho.sayHello();
  minho.run();
}

class Run {
  void run() {
    print("runnnnnn!");
  }
}

enum Team { red, blue }

class Player with Run {
  Team team;

  Player({
    required this.team,
  });

  void sayHello() {
    print("my team is $team");
  }
}
