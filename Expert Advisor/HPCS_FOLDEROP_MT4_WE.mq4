//+------------------------------------------------------------------+
//|                                         HPCS_FOLDEROP_MT4_WE.mq4 |
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
int OnInit()
  {
//---
   FolderCreate("demoFolder",0);
   int li_filehandle=FileOpen("demoFolder//demo.txt",FILE_WRITE|FILE_CSV);
   FileWrite(li_filehandle,"ABCD");
   Print("File Size:",FileSize(li_filehandle));
   FileClose(li_filehandle);   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   FileDelete("demoFolder//demo.txt",0);
   FolderDelete("DemoFolder",0);
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
