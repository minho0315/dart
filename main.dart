// String sayHello({
//   String name = 'nobody',
//   int age = 99,
// }) {
//   return "hello $name, $age";
// }

// String sayHello({
//   required String name,
//   required int age,
// }) {
//   return "hello $name, $age";
// }

// String sayHello(String name, [int? age = 10]) => "hello $name, $age";

String Up(String? str) => str?.toUpperCase() ?? 'minho';

void main() {
  print(Up("mi"));
  print(Up(null));

  String? name;
  name ??= "minho";
  name = null;
  name ??= "minho2";
  print(name);
}
