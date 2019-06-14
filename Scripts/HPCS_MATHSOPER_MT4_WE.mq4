//+------------------------------------------------------------------+
//|                                        HPCS_MATHSOPER_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   float lf_num1=10.23;
   float lf_num2=12.43;
   float lf_num3=-12.43;
   Print(fabs(lf_num3));
   Print(MathCeil(li_num1));
   Print(MathFloor(li_num1));
   Print(MathMod(li_num2,li_num1));
   Print(MathMin(li_num1,li_num2));
   Print(MathMax(li_num1,li_num2));
   Print(MathPow(li_num1,2));
   Print(MathRand());
   Print(MathRound(li_num1));
   
  }
//+------------------------------------------------------------------+
