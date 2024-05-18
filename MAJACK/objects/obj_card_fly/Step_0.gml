vspd += 0.1;

x += hspd;
y += vspd;

image_angle -= 4*sign(hspd);

image_yscale = lerp(image_yscale, 1, 0.2);
