SndBuf T=>dac;
spork ~j();
spork ~Flute2();
ModalBar B1=>dac;
Shakers B=>dac;
3=>B.preset;
0.3=>B.gain;
0.3=>B1.gain;
while(1)
{
    1::second=>now;
}
fun void j()
{
    repeat(11)
    {
        1=>B1.noteOn;
        0.22::second=>now;
        1=>B1.noteOn;
        0.22::second=>now;
        1=>B.noteOn;
        0.22::second=>now;
        1=>B.noteOn;
        0.22::second=>now;
    }
    1=>B.noteOn;
    0.23::second=>now;
    1=>B.noteOn;
    0.23::second=>now;
}
fun void Flute2()
{
    me.dir()+"/SampleMelody/Liftedsegments/flute3.wav"=>T.read;
    10.7::second=>now;
}