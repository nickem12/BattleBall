///Create_Veli_Explosion(x,y,blue)
var x = argument[0];
var y = argument[1];
var blue = argument[2];

//1.Create the centre explosion
var Centre = instance_create(x,y,Obj_Veli_Explosion_Eff);

if(blue)
{
    with(Centre)
    {
        myImage = choose(spr_Explosion_1_Blue, spr_Explosion_2_Blue);
        mySpeed = 0;
        XDIR = 0;
        XDIR = 0;
    }
}
else
{
    with(Centre)
    {
        myImage = choose(spr_Explosion_1_Red, spr_Explosion_2_Red);
        mySpeed = 0;
        XDIR = 0;
        XDIR = 0;
    }
}

//2.Create 3 other explosions


for(var i = 0; i < 3; i++)
{
    var Inst = instance_create(x,y,Obj_Veli_Explosion_Eff)
    if(blue)
    {
        with(Inst)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Blue, spr_Long_Curved_Explosion_2_Blue, spr_Long_Straight_Explosion_1_Blue, spr_Long_Straight_Explosion_2_Blue, spr_Short_Straight_1_Blue, spr_Short_Straight_2_Blue);
            mySpeed = random_range(2,10);
            XDIR = random_range(-10,10);
            YDIR = random_range(-10,10);
        }
    }
    else
    {
        with(Inst)
        {
            myImage = choose(spr_Long_Curved_Explosion_1_Red, spr_Long_Curved_Explosion_2_Red, spr_Long_Straight_Explosion_1_Red, spr_Long_Straight_Explosion_2_Red, spr_Short_Straight_1_Red, spr_Short_Straight_2_Red);
            mySpeed = random_range(2,10);
            XDIR = random_range(-10,10);
            YDIR = random_range(-10,10);
        }
    }
        
}
