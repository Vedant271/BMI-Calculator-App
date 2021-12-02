import 'dart:math';

class CalculatorBrain
{
  CalculatorBrain({this.weight,this.height});

  final int weight;
  final int height;

  double _bmi;

  String bmi_calculator()
  {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_bmi>=25)
    {
      return ("Heavy weight..!!");
    }
    else if(_bmi>18.5)
    {
      return "Good at weight..!!";
    }
    else
    {
      return "Less weight..!!";
    }
  }

  String getConclusion()
  {
    if(_bmi>=25)
    {
      return ("Try reducing weight");
    }
    else if(_bmi>18.5)
    {
      return ("You are all good");
    }
    else
    {
      return ("Try increasing weight");
    }
  }


}