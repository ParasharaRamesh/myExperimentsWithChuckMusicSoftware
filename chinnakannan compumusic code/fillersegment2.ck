Bowed x=>dac;

57.0=>float lp;
59.0=>float ld;
60.0=>float ln;
62.0=>float s;
64.0=>float r;
65.0=>float g;
67.0=>float m;
69.0=>float p;
71.0=>float d;
72.0=>float n;
74.0=>float S;
76.0=>float R;
77.0=>float G;
79.0=>float M;
81.0=>float P;

[[g,1.0],[m,1.0],[m,1.0],[S,1.0],[S,1.0],[R,0.4],[G,0.7],[R,0.3],[S,1.6]]@=> float Table[][];
fun void play(int i,int j)
{
    1=>int pitch;
    Std.mtof(Table[i][0]+(pitch-1))=>x.freq;
    1=>x.noteOn;
    1.2=>x.gain;
    Table[i][j]*0.23::second=>now;
}
fun float TEMPO(int value)
{
   if(value==1)
            return 4.0;
   if(value==2)
            return 2.0;
   if(value==3)
            return 1.0;
   if(value==4)
            return 0.5;
   if(value==5)
            return 0.25;
   if(value==6)
            return 0.125;
}

for(0=>int i;i<Table.cap();i++)
{
       play(i,1);
}


