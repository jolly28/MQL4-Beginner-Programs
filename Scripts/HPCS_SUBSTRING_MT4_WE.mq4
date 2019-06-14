//+------------------------------------------------------------------+
//|                                        HPCS_SUBSTRING_MT4_WE.mq4 |
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
   string ls_string1="my name is kb";
   string ls_string2="name";
   int check=StringFind(ls_string1,ls_string2,0);
   if (check==-1)
   {
      Print("Not Found");
   }
   else
   {
      Print("Found");
   }
  }
//+------------------------------------------------------------------+
