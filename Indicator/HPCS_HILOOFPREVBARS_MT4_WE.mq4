//+------------------------------------------------------------------+
//|                                   HPCS_HILOOFPREVBARS_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property show_inputs
extern int gi_prevBar=1;//enter number of prev bars to look
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   int li_closeValInd=iHighest(NULL,0,MODE_CLOSE,gi_prevBar,1);
   double lf_closeVal=Close[li_closeValInd];
   string ls_closeVal=DoubleToString(lf_closeVal,5);
   ObjectCreate(0,"Obj1", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("Obj1","Hi_Close:"+ls_closeVal,10, "Verdana", Yellow);
   ObjectSet("Obj1", OBJPROP_CORNER, 0);
   ObjectSet("Obj1", OBJPROP_XDISTANCE, 20);
   ObjectSet("Obj1", OBJPROP_YDISTANCE, 10);
   
   int li_openValInd=iHighest(NULL,0,MODE_OPEN,gi_prevBar,1);
   double lf_openVal=Open[li_openValInd];
      string ls_openVal=DoubleToString(lf_openVal,5);
      ObjectCreate(0,"Obj2", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj2","Hi_Open:"+ls_openVal,10, "Verdana", Yellow);
      ObjectSet("Obj2", OBJPROP_CORNER, 0);
      ObjectSet("Obj2", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj2", OBJPROP_YDISTANCE, 25);
    
      int li_highValInd=iHighest(NULL,0,MODE_HIGH,gi_prevBar,1);
   double lf_highVal=High[li_highValInd];
      string ls_highVal=DoubleToString(lf_highVal,5);
      ObjectCreate(0,"Obj3", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj3","Hi_High:"+ls_highVal,10, "Verdana", Yellow);
      ObjectSet("Obj3", OBJPROP_CORNER, 0);
      ObjectSet("Obj3", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj3", OBJPROP_YDISTANCE, 40);
      
      int li_lowValInd=iHighest(NULL,0,MODE_LOW,gi_prevBar,1);
   double lf_lowVal=Low[li_lowValInd];
      string ls_lowVal=DoubleToString(lf_lowVal,5);
      ObjectCreate(0,"Obj4", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj4","Hi_Low:"+ls_lowVal,10, "Verdana", Yellow);
      ObjectSet("Obj4", OBJPROP_CORNER, 0);
      ObjectSet("Obj4", OBJPROP_XDISTANCE, 20);
      ObjectSet("Obj4", OBJPROP_YDISTANCE, 55);

     //lowest values of previous bars
   int li_lcloseValInd=iLowest(NULL,0,MODE_CLOSE,gi_prevBar,1);
   double lf_lcloseVal=Close[li_lcloseValInd];
   string ls_lcloseVal=DoubleToString(lf_lcloseVal,5);
   ObjectCreate(0,"Obj5", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("Obj5","Lo_Close:"+ls_lcloseVal,10, "Verdana", Yellow);
   ObjectSet("Obj5", OBJPROP_CORNER, 0);
   ObjectSet("Obj5", OBJPROP_XDISTANCE, 150);
   ObjectSet("Obj5", OBJPROP_YDISTANCE, 10);
   
   int li_lopenValInd=iLowest(NULL,0,MODE_OPEN,gi_prevBar,1);
   double lf_lopenVal=Open[li_lopenValInd];
      string ls_lopenVal=DoubleToString(lf_lopenVal,5);
      ObjectCreate(0,"Obj6", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj6","Lo_Open:"+ls_lopenVal,10, "Verdana", Yellow);
      ObjectSet("Obj6", OBJPROP_CORNER, 0);
      ObjectSet("Obj6", OBJPROP_XDISTANCE, 150);
      ObjectSet("Obj6", OBJPROP_YDISTANCE, 25);
    
      int li_lhighValInd=iLowest(NULL,0,MODE_HIGH,gi_prevBar,1);
   double lf_lhighVal=High[li_lhighValInd];
      string ls_lhighVal=DoubleToString(lf_lhighVal,5);
      ObjectCreate(0,"Obj7", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj7","Lo_High:"+ls_lhighVal,10, "Verdana", Yellow);
      ObjectSet("Obj7", OBJPROP_CORNER, 0);
      ObjectSet("Obj7", OBJPROP_XDISTANCE, 150);
      ObjectSet("Obj7", OBJPROP_YDISTANCE, 40);
      
      int li_llowValInd=iLowest(NULL,0,MODE_LOW,gi_prevBar,1);
   double lf_llowVal=Low[li_llowValInd];
      string ls_llowVal=DoubleToString(lf_llowVal,5);
      ObjectCreate(0,"Obj8", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("Obj8","Lo_Low:"+ls_llowVal,10, "Verdana", Yellow);
      ObjectSet("Obj8", OBJPROP_CORNER, 0);
      ObjectSet("Obj8", OBJPROP_XDISTANCE, 150);
      ObjectSet("Obj8", OBJPROP_YDISTANCE, 55);
    
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
