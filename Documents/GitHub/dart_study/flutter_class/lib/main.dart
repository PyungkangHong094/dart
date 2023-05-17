#! class need to know 컴포넌트

// -------------------------------- //
class Strong {
  final double strlev = 2000;
}

//이넘은 안에들어간것들 중에 안넣으면 에러 나옴
//팀의 타입을 만들어줌
enum Team { red, blue }

abstract class Human {
  void walk();
}

class Player extends Human {
  // if you put final you can't change the name of the player
  late final String name;
  late int xp, age;
  late String team;

  //API
  Player.formJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
  void walk() {}

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = "red",
        this.xp = 0;

  void sayHello() {
    var name = '121';
    print("Hello $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: "pk",
    age: 20,
  );
  print(player.name);
  player.sayHello();
  var player2 = Player("skk", 300);

  // API
  var apiData = [
    {
      "name": "nice",
      "team": "Red",
      "xp": 0,
    }
  ];
}
