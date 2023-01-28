void main() {
  //* Hello word 프린트 하는법
  //? 세미콜린은 필요로하다 왜
  //? 세미콜린을 안쓰는 이유가 있기때문에 쓸때랑 안달아줄때가 다르기때문에
  print('hello dart');

  //* 변수
  //* var 은 어떤것이든 받고 그 값을 정의를 알아서 해준다.
  var name = 'pk';
  String name2 = "pk";
  var whatisit = 1;

  //* dynamic
  //* 다이나믹은 어떤값이 많이들어간다.
  //? 다이나믹은 왜 필요한가?
  //! 예시
  if (name is String) {}

  //! null safty
  /* 런타임 에러가 뜨는거  
  ? 라는 의미는 or 
  어떤 변수, 혹은 데이터가 null 이 될 수 있음을명시하는걸 말한다 
  그래서 이프를 쓴건다. */
  String? pk = 'pk';
  pk = null;
  // pk?.isNotEmpty;
  if (pk != null) {
    pk.isNotEmpty;
  }

  //! final variable
  /* 파이널은 바뀌지 않는다 var 같은거긴하지만 그 값을 처음에 지정해주면 바뀌지않는다*/

  //! late variable
  /* late 변수는 나중에 값을 받아 오는것이다
   에이피아이를 가져올 때 많이 쓴다 
   */

  // ! 기본 데이터 타입
  /** String, bool, int, double 이 모든것이 다 object 이다 
   * 객체지향 언어로 불리는 이유이다 
   */

  //! list
  var giveMeFive = true;
  List<int> num = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    if (giveMeFive) 5,
  ];
}
