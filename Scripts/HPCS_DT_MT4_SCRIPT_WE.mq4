//+------------------------------------------------------------------+
//|                                               HPCS_DT_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict
#property show_inputs
input datetime ldt_datetime="D'2015.01.01 00:00'";//Time

//+------------------------------------------------------------------+
//| Script program start function                                    |
void OnStart()
  {
   Print("Day is ",TimeDay(ldt_datetime));
   Print("Month is ",TimeMonth(ldt_datetime));
   Print("Year is ",TimeYear(ldt_datetime));
   Print("Day of week is ",TimeDayOfWeek(ldt_datetime));
   Print("Day of year is ",TimeDayOfYear(ldt_datetime));
   Print("Minute is ",TimeMinute(ldt_datetime));
   Print("Seconds is ",TimeSeconds(ldt_datetime));
   
  }
//+------------------------------------------------------------------+
