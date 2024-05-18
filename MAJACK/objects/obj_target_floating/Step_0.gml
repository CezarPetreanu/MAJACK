float += float_spd;
if(float >= 360) float = float mod 360;
y = yy+sin(degtorad(float))*float_amp;

event_inherited();