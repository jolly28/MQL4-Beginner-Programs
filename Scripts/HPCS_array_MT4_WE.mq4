//+------------------------------------------------------------------+
//|                                               HPCS_array_MT4.mq4 |
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
   int li_1d_int[5]={10,21,13,4,15};
   for(int i=0;i<5;i++)
      Print(li_1d_int[i]);
   Print("Array Size ",ArraySize(li_1d_int));
   Print("Array Range ",ArrayRange(li_1d_int,0));
   Print("Array Max ",li_1d_int[ArrayMaximum(li_1d_int)]);
   Print("Array Min ",li_1d_int[ArrayMinimum(li_1d_int)]);
   
  }
//+------------------------------------------------------------------+
