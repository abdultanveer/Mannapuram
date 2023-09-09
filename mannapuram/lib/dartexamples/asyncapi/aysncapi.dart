void main() async {
  print(await createOrderCoffee());
}

Future<String> createOrderCoffee() async {
  print("instruction no 1");
  var coffee = await prepareCoffee();
  print("instruction no 2");

  return 'your order is $coffee';
}

Future<String> prepareCoffee() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'large latte';
  });
}
