class IncomeTax{
int netIncome = 1000000;

  double calculateTax(int income){
    return income /10;
  }
}

class GST extends IncomeTax{
  double calculateGst(int income, int luxurySpending){
   return   income/10 + luxurySpending/100;
  }

  //redefine the calculateTax
  @override
  double calculateTax(int income) {

    print("net income is ${super.netIncome}");
    double oldTax =  super.calculateTax(income);
    int cess = 100;
    return oldTax + cess;
  }
}

void main(){
  IncomeTax incomeTax = IncomeTax();
  double oldTax = incomeTax.calculateTax(10000);
  print("old income tax was $oldTax");
  GST gst = GST();
  double newTax = gst.calculateTax(10000);
  print("gst is $newTax");

}