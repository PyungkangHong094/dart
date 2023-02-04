import 'package:first_project/first_project.dart' as first_project;

void main(List<String> arguments) {
  int myAge = 10;
  String myName = "John";
  print(myAge);
  // print('Hello world: ${first_project.calculate()}!');

  // 스트링 배움
  var name = 'pk';
  int age = 10;
  var sent = 'hi everone, my name is $name, nice to meet u ${age + 24}';
  print(sent);

  //콜렉션 for
  var oldfriend = ['nick', 'sss'];
  var newfriend = [
    'nick2',
    'sss2',
    for (var friend in oldfriend) "x $friend",
  ];
  print(newfriend);

  //map

  Map<int, bool> x = {
    1: true,
    2: false,
    3: true,
  };

  //set
  // 유닉하다 1을 다 넣어도 1을 더 넣을 수 없다 {} 이걸로만 된다
  //Set에 속한 모든 아이템들이 유니크해야될 때 사용한다.
  // 유니크할 필요가 없다면 List를 사용하면 된다.
  Set<int> number = {1, 2, 3, 4, 5};

  //defining a function
  String sayhello(String name) {
    return "hellow $name nice to meet u";
  }
  // ! or could be a function
  // String sayhello(String potato) => "hellow $potato nice to meet u";

  //name parameter
  String sayHello(String name, int age, String country) {
    return "hellow $name nice to meet u $age, my age $country";
  }

  // void main() {
  //   print(sayhello('pk'));
  //   print(sayHello("pk", 21, "cucu"));
  // }

  String recaptest(
    String name,
    String country,
    int age,
  ) {
    return "hellow  nice to meet u , my $name i live $country my age is $age";
  }

  // void main() {
  //   recaptest("dd", "country", 11);
  // }

  //! qq operator
  //* 정말 중요함
  // ?? and ?=
  String capitalizeName(String? name){if (name!=null) returnname.toUpperCase();)};

  void main(){

  }
}
