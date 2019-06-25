//+------------------------------------------------------------------+
//|                                        HPCS_NEWCANDLE_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
datetime ldt_timeofcandle;
int OnInit()
  {
//---
   ldt_timeofcandle=Time[0];
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   ChartSetSymbolPeriod(ChartID(),NULL,PERIOD_M1);
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   if(ldt_timeofcandle!=Time[0])
      {Alert("new candle");
      ldt_timeofcandle=Time[0];
     }
   
  }
//+------------------------------------------------------------------+
