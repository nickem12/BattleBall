///Player_Animate()
if(Last_State != noone)
{
    if(Last_State != SpriteState) 
    {
        Cur_Frame = Cur_Frame % sprite_get_number(sprite_index);
        alarm[11] = Frame_Timer;
    }
}

Last_State = SpriteState;

if(playerNum == 1)                                          //If we are the first player
{
    if(SpriteState == "Idle")                               //If the player state is idle
    {
        switch(global.Current_Class)
        {
            case 0:         //Pistol
                sprite_index = spr_Gavin_Idle_Blue;
                break;
            case 1:         //Machinegun
                sprite_index = spr_Jakob_Idle_Blue;
                break;
            case 2:         //Minigun
                sprite_index = spr_Phelan_Idle_Blue;
                break;
            case 3:         //Sniper
                sprite_index = spr_Payton_Idle_Blue;
                break;
        }
    
    }
    else if (SpriteState == "Walk_Left" || SpriteState == "Walk_Right")            //If the player state is walk left state
    {
        switch(global.Current_Class)
        {
            case 0:         //Pistol
                sprite_index = spr_Gavin_Run_Blue;
                break;
            case 1:         //Machinegun
                sprite_index = spr_Jakob_Run_Blue;
                break;
            case 2:         //Minigun
                sprite_index = spr_Phelan_Run_Blue;
                break;
            case 3:         //Sniper
                sprite_index = spr_Payton_Run_Blue;
                break;
        }
        
    }
    else if (SpriteState == "Jump")                         //If the sprite state is the jumping state
    {
    
        if(phy_position_y < phy_position_yprevious)
        {
            switch(global.Current_Class)
            {
                case 0:         //Pistol
                    sprite_index = spr_Gavin_Jump_Blue;
                    break;
                case 1:         //Machinegun
                    sprite_index = spr_Jakob_Jump_Blue;
                    break;
                case 2:         //Minigun
                    sprite_index = spr_Phelan_Jump_Blue;
                    break;
                case 3:         //Sniper
                   sprite_index = spr_Payton_Jump_Blue;
                    break;
            }
        }
        else
        {
            switch(global.Current_Class)
            {
                case 0:         //Pistol
                    sprite_index = spr_Gavin_Fall_Blue;
                    break;
                case 1:         //Machinegun
                    sprite_index = spr_Jakob_Fall_Blue;
                    break;
                case 2:         //Minigun
                    sprite_index = spr_Phelan_Fall_Blue;
                    break;
                case 3:         //Sniper
                   sprite_index = spr_Payton_Fall_Blue;
                    break;
            }
        }
    }
}
else if (playerNum == 2)                                    //If we are the second player
{
    if(SpriteState == "Idle")                               //If we are in the idle sprite state
    {
         switch(global.Player2Class)
        {
            case 0:         //Pistol
                sprite_index = spr_Gavin_Idle_Red;
                break;
            case 1:         //Machinegun
                sprite_index = spr_Jakob_Idle_Red;
                break;
            case 2:         //Minigun
                sprite_index = spr_Phelan_Idle_Red;
                break;
            case 3:         //Sniper
                sprite_index = spr_Payton_Idle_Red;
                break;
        }
    }
    else if (SpriteState == "Walk_Left" || SpriteState == "Walk_Right")                    //If we are in the walking left sprite state
    {
        switch(global.Player2Class)
        {
            case 0:         //Pistol
                sprite_index = spr_Gavin_Run_Red;
                break;
            case 1:         //Machinegun
                sprite_index = spr_Jakob_Run_Red;
                break;
            case 2:         //Minigun
                sprite_index = spr_Phelan_Run_Red;
                break;
            case 3:         //Sniper
                sprite_index = spr_Payton_Run_Red;
                break;
        }
    }
    else if (SpriteState == "Jump")                         //Else if we are in the jumping sprite state
    {
        if(phy_position_y < phy_position_yprevious)
        {
            switch(global.Player2Class)
            {
                case 0:         //Pistol
                    sprite_index = spr_Gavin_Jump_Red;
                    break;
                case 1:         //Machinegun
                    sprite_index = spr_Jakob_Jump_Red;
                    break;
                case 2:         //Minigun
                    sprite_index = spr_Phelan_Jump_Red;
                    break;
                case 3:         //Sniper
                   sprite_index = spr_Payton_Jump_Red;
                    break;
            }
        }
        else
        {
            switch(global.Player2Class)
            {
                case 0:         //Pistol
                    sprite_index = spr_Gavin_Fall_Red;
                    break;
                case 1:         //Machinegun
                    sprite_index = spr_Jakob_Fall_Red;
                    break;
                case 2:         //Minigun
                    sprite_index = spr_Phelan_Fall_Red;
                    break;
                case 3:         //Sniper
                   sprite_index = spr_Payton_Fall_Red;
                    break;
            }
        }
    }
}


