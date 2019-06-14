//+------------------------------------------------------------------+
//|                                      HPCS_DISPOHLCVAL_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
      double lf_closeVal=iClose(0,0,1);
      string ls_closeVal=DoubleToString(lf_closeVal,5);
      ObjectCreate(0,"Obj1", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj1","Close Val:"+ls_closeVal,10, "Verdana", Yellow);
      ObjectSet("Obj1", OBJPROP_CORNER, 0);
      ObjectSet("Obj1", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj1", OBJPROP_YDISTANCE, 10);
      
      double lf_openVal=iOpen(0,0,1);
      string ls_openVal=DoubleToString(lf_openVal,5);
      ObjectCreate(0,"Obj2", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj2","Open Val:"+ls_openVal,10, "Verdana", Yellow);
      ObjectSet("Obj2", OBJPROP_CORNER, 0);
      ObjectSet("Obj2", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj2", OBJPROP_YDISTANCE, 25);
    
      double lf_highVal=iHigh(0,0,1);
      string ls_highVal=DoubleToString(lf_highVal,5);
      ObjectCreate(0,"Obj3", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj3","High Val:"+ls_highVal,10, "Verdana", Yellow);
      ObjectSet("Obj3", OBJPROP_CORNER, 0);
      ObjectSet("Obj3", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj3", OBJPROP_YDISTANCE, 40);
      
      double lf_lowVal=iLow(0,0,1);
      string ls_lowVal=DoubleToString(lf_lowVal,5);
      ObjectCreate(0,"Obj4", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj4","Low Val:"+ls_lowVal,10, "Verdana", Yellow);
      ObjectSet("Obj4", OBJPROP_CORNER, 0);
      ObjectSet("Obj4", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj4", OBJPROP_YDISTANCE, 55);
      
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
