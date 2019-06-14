//+------------------------------------------------------------------+
//|                                                        prog1.mq4 |
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
   Alert("hello");
   ChartSetString(ChartID(),CHART_COMMENT,"Iron Man");
   MessageBox("Hi","balle balle",0);
   string ls_sound="\\Files\\sample.wav";
   if(!PlaySound(ls_sound))
      Print(GetLastError());
   Print("Hello World");
  
  }
//+------------------------------------------------------------------+
