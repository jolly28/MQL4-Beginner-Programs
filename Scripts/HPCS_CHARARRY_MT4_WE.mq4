//+------------------------------------------------------------------+
//|                                         HPCS_CHARARRY_MT4_WE.mq4 |
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
   char lc_chararr[]={'t','h','i','s'};
   string ls_arrtostr=CharArrayToString(lc_chararr,0,-1);
   Print(ls_arrtostr);
   char lc_newchararr[];
   StringToCharArray(ls_arrtostr,lc_newchararr,0,-1);
   for(int i=0 ;i<ArraySize(lc_newchararr);i++)
   Print(CharToStr(lc_newchararr[i]));
   
  }
//+------------------------------------------------------------------+
