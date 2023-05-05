public class BasiccalculatorController {
    public Integer firstNumber{get;set;}
        public Integer SecondNumber{get;set;}
            Public Integer Result{get;set;}
    public void Addition(){
        Result = firstNumber+SecondNumber;
    }
    public void Substraction(){
        Result = firstNumber-SecondNumber;
    }
    Public void Multiplication(){
        Result = firstNumber*SecondNumber;
    }
    public void Division(){
        if(SecondNumber > 0){
            Result = firstNumber/SecondNumber;
        }
    }
}