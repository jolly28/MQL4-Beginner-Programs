//+------------------------------------------------------------------+
//|                                         HPCS_BULLBEAR_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 4


double gd_drawBull_1[];
double gd_drawBull_2[];
double gd_drawBear_3[];
double gd_drawBear_4[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,gd_drawBull_1);
   SetIndexStyle(0,DRAW_HISTOGRAM,1,12,clrAqua);
   SetIndexBuffer(1,gd_drawBull_2);
   SetIndexStyle(1,DRAW_HISTOGRAM,1,12,clrAqua);
     
   SetIndexBuffer(2,gd_drawBear_3);
   SetIndexStyle(2,DRAW_HISTOGRAM,1,12,clrRed);
   SetIndexBuffer(3,gd_drawBear_4);
   SetIndexStyle(3,DRAW_HISTOGRAM,1,12,clrRed);   
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
   int i;
   for (i=100;i>=1;i--)
   {if(Close[i+2]>Close[i+1] && Close[i+1]>Close[i])
   {
     gd_drawBear_3[i+2]=Close[i+2];
     gd_drawBear_3[i+1]=Close[i+1];
     gd_drawBear_3[i]=Close[i];
     gd_drawBear_4[i+2]=Open[i+2];
     gd_drawBear_4[i+1]=Open[i+1];
     gd_drawBear_4[i]=Open[i];
     
   }
   if(Close[i+2]<Close[i+1] && Close[i+1]<Close[i])
   {
     gd_drawBull_1[i+2]=Close[i+2];
     gd_drawBull_1[i+1]=Close[i+1];
     gd_drawBull_1[i]=Close[i];
     gd_drawBull_2[i+2]=Open[i+2];
     gd_drawBull_2[i+1]=Open[i+1];
     gd_drawBull_2[i]=Open[i];
   }}
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
