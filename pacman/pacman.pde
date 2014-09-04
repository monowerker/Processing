int upper_angle_max = 55;
int upper_angle_min = 0;
int lower_angle_max = 305;
int lower_angle_min = 365;
int direction = 1; // 1 = closing, 0 = opening
int upper_angle_current = 55;
int lower_angle_current = 305;
int speed = 3;
int pacman_size = 30;

void setup()
{
    size(512, 512, P2D);
    background(128, 128, 128);
    fill(215, 215, 0);
}

void draw()
{
    if (direction == 1)
    {
        upper_angle_current = upper_angle_current - speed;
        lower_angle_current = lower_angle_current + speed;
    }
    else if (direction == 0)
    {
        upper_angle_current = upper_angle_current + speed;
        lower_angle_current = lower_angle_current - speed;   
    }

    if (upper_angle_current <= upper_angle_min)
    {
        direction = 0;
    }
    else if (upper_angle_current >= upper_angle_max)
    {
        direction = 1;
    }
    
    background(128, 128, 128);
    arc(width/2, height/2, pacman_size, pacman_size,
        radians(upper_angle_current), radians(lower_angle_current), PIE);
}   
