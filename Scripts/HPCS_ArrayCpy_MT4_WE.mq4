//+------------------------------------------------------------------+
//|                                     HPCS_ArrayCpy_MT4_WE.mq4.mq4 |
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
   int li_1d1_int[]={10,20,30,40,50};
   int li_1d2_int[];
   ArrayCopy(li_1d2_int,li_1d1_int,0,0,WHOLE_ARRAY);
   Print(ArraySize(li_1d2_int));
   ArrayFree(li_1d1_int);
   Print(ArraySize(li_1d1_int));

  }
//+------------------------------------------------------------------+
