///Create_Veli_Explosion(x,y,blue)
x1 = argument[0];
y1 = argument[1];
blue = argument[2];

//1.Create the centre explosion
Centre = instance_create(x1,y1,Obj_Veli_Explosion_Eff);

if(blue)
{
    with(Centre)
    {
        myImage = choose(spr_Explosion_1_Blue, spr_Explosion_2_Blue);
        mySpeed = 0;
        XDIR = 0;
        YDIR = 0;
    }
}
else
{
    with(Centre)
    {
        myImage = choose(spr_Explosion_1_Red, spr_Explosion_2_Red);
        mySpeed = 0;
        XDIR = 0;
        YDIR = 0;
    }
}

//2.Create 3 other explosions



    Inst = instance_create(x1,y1,Obj_Veli_Explosion_Eff)
    Inst2 = instance_create(x1,y1,Obj_Veli_Explosion_Eff)
    Inst3 = instance_create(x1,y1,Obj_Veli_Explosion_Eff)
    
    if(blue)
    {
        with(Inst)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Blue, spr_Long_Curved_Explosion_2_Blue, spr_Long_Straight_Explosion_1_Blue, spr_Long_Straight_Explosion_2_Blue, spr_Short_Straight_1_Blue, spr_Short_Straight_2_Blue);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
        with(Inst2)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Blue, spr_Long_Curved_Explosion_2_Blue, spr_Long_Straight_Explosion_1_Blue, spr_Long_Straight_Explosion_2_Blue, spr_Short_Straight_1_Blue, spr_Short_Straight_2_Blue);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
        with(Inst3)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Blue, spr_Long_Curved_Explosion_2_Blue, spr_Long_Straight_Explosion_1_Blue, spr_Long_Straight_Explosion_2_Blue, spr_Short_Straight_1_Blue, spr_Short_Straight_2_Blue);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
    }
    else
    {
        with(Inst)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Red, spr_Long_Curved_Explosion_2_Red, spr_Long_Straight_Explosion_1_Red, spr_Long_Straight_Explosion_2_Red, spr_Short_Straight_1_Red, spr_Short_Straight_2_Red);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
        with(Inst2)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Red, spr_Long_Curved_Explosion_2_Red, spr_Long_Straight_Explosion_1_Red, spr_Long_Straight_Explosion_2_Red, spr_Short_Straight_1_Red, spr_Short_Straight_2_Red);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
        with(Inst3)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Red, spr_Long_Curved_Explosion_2_Red, spr_Long_Straight_Explosion_1_Red, spr_Long_Straight_Explosion_2_Red, spr_Short_Straight_1_Red, spr_Short_Straight_2_Red);
            mySpeed = random_range(4,20);
            XDIR = random_range(-20,20);
            YDIR = random_range(-20,20);
        }
    }
        

