/// @description Add platformer mechanics

// Get keyboard input
key_right = keyboard_check(vk_right); //ord('D') for the letter D
key_left = keyboard_check(vk_left);   //ord('A') for A
key_jump = keyboard_check(vk_space); 

//Work out where to move horizontal
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;


//Work out if wr should jump
if (place_meeting(x,y+1,oWall) and (key_jump))
{
	vsp = vsp_jump;
}

//Check Horizontal collissions and then move if we can
var onepixel = sign(hsp)//sign() return -1,0 or 1
if (place_meeting(x+hsp,y,oWall))
{
	//move as close as we can
	//move 1px toward the Wall until we're 1px away
	while (place_meeting(x+onepixel,y,oWall)
	{
		x = x+  onepixel
	}
	hsp = 0; //once we're one pixel away, stop moving
}
//update x
x = x+ hsp

//Check for vertical collisions
var onepixel = sign(vsp)
if (place_meeting(x,hsp+y,oWall))
{
	//move as close as we can, then stop
	while (place_meeting(x,onepixel+y,oWall)
	{
		y = y +  onepixel
	}
	vsp = 0; 
	//Update y
	y = y+vsp
/*
	right key only is pressed:
	hsp = (1-0) * 4 = 1 * 4 = 4
	left key only is pressed:
	hsp = (0 - 1) * 4 = -1 * 4 = -4
	No key being pressed
	0 - 0 * 4 = 0 * 4 = 0
	Both key are being pressed:
	1 - 1 * 4 = 0 * 4 = 0
	
*/
	

