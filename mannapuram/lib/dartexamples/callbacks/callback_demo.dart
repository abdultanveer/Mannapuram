import 'dart:io';

class CallbackDemo{
}
void main(){
  Neeraj neeraj = Neeraj();
  CallBackMobilePhone mobilePhone = Abdul();
  neeraj.getCricketScore(mobilePhone);

}

class Neeraj{
   void getCricketScore( CallBackMobilePhone mobilePhone){
     sleep(Duration(seconds:10));

     print("i have fetched the data");
     mobilePhone.onSuccess(100);
   }
}

class Abdul implements CallBackMobilePhone{
  void announceCricketScore(int criScore){
    print("abdul is serving the data fetched by neeraj ie cricket score is $criScore");
  }

  @override
  void onSuccess(int cricketScore) {
    announceCricketScore(cricketScore);
  }
}

class CallBackMobilePhone{
    void onSuccess(int cricketScore){}
}