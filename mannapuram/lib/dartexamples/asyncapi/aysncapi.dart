void main()async{
  print(await createOrderCoffee());
}

Future<String> createOrderCoffee() async {
   var coffee =  await prepareCoffee();

  return 'your order is $coffee';
}

Future<String> prepareCoffee() {
   return Future.delayed(Duration(seconds: 2),
      (){
     return   'large latte';
      });
}