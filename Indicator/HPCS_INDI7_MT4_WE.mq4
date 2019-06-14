//+------------------------------------------------------------------+
//|                                            HPCS_INDI7_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property show_inputs
#property indicator_buffers 2

#property indicator_color1 RoyalBlue
#property indicator_width1 2

#property indicator_color2 Red
#property indicator_width2 2

double gd_drawArrow_1[];
double gd_drawArrow_2[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,gd_drawArrow_1);
   SetIndexStyle(0,DRAW_ARROW,0,1);
   SetIndexArrow(0,217);
   SetIndexBuffer(1,gd_drawArrow_2);
   SetIndexStyle(1,DRAW_ARROW,0,1);
   SetIndexArrow(1,218);
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
int li_bars=iBars(NULL,0);
   for (li_bars=100;li_bars>1;li_bars--)
   {if(Open[li_bars+1]>Open[li_bars] && Open[li_bars]<Open[li_bars-1])
   {
     gd_drawArrow_2[li_bars]=Open[li_bars]-30*Point; 
   }
   if(Open[li_bars+1]<Open[li_bars] && Open[li_bars]>Open[li_bars-1])
   {
     gd_drawArrow_1[li_bars]=Open[li_bars]+30*Point;
   }}
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
