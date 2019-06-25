//+------------------------------------------------------------------+
//|                                       HPCS_STARTNSTOP_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
extern string start="hh:mm";//Start Time
extern string finish="hh:mm";//End Time
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   datetime ldt_currtime = TimeLocal();
   datetime ldt_start = StringToTime( TimeToString(ldt_currtime, TIME_DATE ) + " " + start );
   datetime ldt_stop = StringToTime( TimeToString(ldt_currtime, TIME_DATE ) + " " + finish );
   if(ldt_currtime>=ldt_start && ldt_currtime<=ldt_stop)
   {  ObjectCreate("Obj1", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj1","EA Operating",20, "Verdana", Green);
      ObjectSet("Obj1", OBJPROP_CORNER, 0);
      ObjectSet("Obj1", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj1", OBJPROP_YDISTANCE, 20);
      ObjectDelete("Obj2");
   }
   else
   {
      ObjectCreate("Obj2", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj2","EA Not Operating",20, "Verdana", Red);
      ObjectSet("Obj2", OBJPROP_CORNER, 0);
      ObjectSet("Obj2", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj2", OBJPROP_YDISTANCE, 20);
      ObjectDelete("Obj1");
   }
  }
//+------------------------------------------------------------------+
