//+------------------------------------------------------------------+
//|                                        HPCS_CheckCurrentTime.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
input datetime starttime=D'2019.06.05 00:00';//Start Time
input datetime endtime=D'2019.06.05 00:00';//End Time
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   int li_starthh=TimeHour(starttime);
   int ldt_startmm=TimeMinute(starttime);
   int ldt_endhh=TimeHour(endtime);
   int ldt_endmm=TimeMinute(endtime);
   datetime ldt_currenttime=TimeLocal();
   Print(ldt_currenttime);
   int ldt_currhh=TimeHour(ldt_currenttime);
   int ldt_currmm=TimeMinute(ldt_currenttime);
   if (ldt_currhh>=ldt_starthh && ldt_currhh<=ldt_endhh)
   {
            
   if(ldt_currhh==ldt_starthh && ldt_currhh<ldt_endhh)
   {
      if(ldt_currmm>ldt_startmm)
      {
      Print("True");
      }
      else
      {
      Print("False");
      }
   }
   else if(ldt_currhh==endhh && ldt_currhh>starthh)
   {
      if(ldt_currmm<ldt_startmm)
      {
      Print("True");
      }
      else
      {
      Print("False");
      }
   }
   else if(ldt_currhh==endhh && ldt_currhh==starthh)
   {
      if(ldt_currmm>ldt_startmm && ldt_currmm<ldt_endmm)
      {
      Print("True");
      }
      else
      {
      Print("False");
      }
   }
   }
   else
   {
   Print("False");
   }
   
   
  }
//+------------------------------------------------------------------