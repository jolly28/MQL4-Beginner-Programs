//+------------------------------------------------------------------+
//|                                   HPCS_PREVIOUSCANDLE_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
input string gs_Sym="AUDCAD,CADJPY,EURUSD,USDINR,GBPUSD,NZDCAD,NZDUSD,EURPKR,USDJPY";//Symbol String
string gs_Symbol_temp[];
string gs_Symbol[1];
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   ushort u_sep=StringGetCharacter(",",0);
   int k = StringSplit(gs_Sym,u_sep,gs_Symbol_temp);
   Print(k);
   int j=0;
   for( int i=0;i<ArraySize(gs_Symbol_temp);i++)
   {  
       double bid = MarketInfo ( gs_Symbol_temp[i] , MODE_BID );
       if ( GetLastError() == 4106 )
       {
         Print ( gs_Symbol_temp[i] , " Symbol Not Exist" ) ;
       }
      else
      {
      gs_Symbol[j]=gs_Symbol_temp[i];
      j++;
      ArrayResize(gs_Symbol,j+1);
      }
   }
   ArrayResize(gs_Symbol,ArraySize(gs_Symbol)-1);
   for( int i=0;i<ArraySize(gs_Symbol);i++)
   Print(gs_Symbol[i]);
  
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
   
  }
//+------------------------------------------------------------------+
