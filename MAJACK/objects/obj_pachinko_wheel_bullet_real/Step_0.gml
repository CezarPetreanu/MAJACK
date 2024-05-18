if(dist < dist_max) dist += dist_spd;
dir += dir_spd;
if(dir >= 360) dir = dir mod 360;
x = par.x + lengthdir_x(dist, dir);
y = par.y + lengthdir_y(dist, dir);