dir = point_direction(x, y, obj_majack.x, obj_majack.y);
vspd = -5;
yy = 0;

bouncy_real = instance_create_depth(x, y, depth-1, obj_plink_bouncy_real);
bouncy_real.shadow = self;

targetx = obj_majack.x;
targety = obj_majack.y;

active = false;