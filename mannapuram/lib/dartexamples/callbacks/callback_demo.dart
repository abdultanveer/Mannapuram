import 'dart:io';

class CallbackDemo{
}
void main(){
  Neeraj neeraj = Neeraj();
  CallBackMobilePhone mobilePhone = Abdul();
  neeraj.fetchData(mobilePhone);

}

class Neeraj{
   void fetchData( CallBackMobilePhone mobilePhone){
     sleep(Duration(seconds:10));

     print("i have fetched the data");
     mobilePhone.onSuccess();
   }
}

class Abdul implements CallBackMobilePhone{
  void serveData(){
    print("abdul is serving the data fetched by neeraj");
  }

  @override
  void onSuccess() {
    serveData();
  }
}

class CallBackMobilePhone{
    void onSuccess(){}
}