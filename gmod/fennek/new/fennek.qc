$modelname "mimi/fennek.mdl"

$cdmaterials "mimi/fennek/"

$model "Body" "Body" {
	NoAutoDMXRules
	flexcontroller my_group range 0 1 jaw_drop
	flexcontroller my_group range 0 1 blink
	"%vrc.v_AA"= jaw_drop
	"%Blink A" = blink
}

$bodygroup "Hair" {
    studio "Hair"
	blank
}
$bodygroup "CropHoodie" {
    studio "CropHoodie"
	blank
}
$bodygroup "Croptop" {
    studio "Croptop"
	blank
}
$bodygroup "Underwear" {
    studio "Underwear"
	blank
}
$bodygroup "ThighHighs" {
    studio "ThighHighs"
	blank
}


$surfaceprop flesh
$ambientboost
$attachment "eyes" "ValveBiped.Bip01_Head1" 4.00 0.00 -0.00 rotate 0 -80 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1.50 -6.00 0.00 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine4" 5.00 4.00 -0.00 rotate 0 90 90
$attachment "physgun_attachment" "ValveBiped.Bip01_R_Hand" 2.00 -2.50 -0.50 rotate 90 90 0
$attachment "forward" "ValveBiped.Bip01_Head1" 4.50 0.00 0.00 rotate 0 -90 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 2.00 -2.50 -0.50 rotate 180 180 0 
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 2.00 -2.50 -0.50 rotate 180 180 180
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 5.00 0.00 -0.00 rotate -90 -90 0

//Visit https://developer.valvesoftware.com/wiki/Main_Page if you want to know the function of all commands in this file

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

//The first value, 0.5, dictates how high the foot is off the ground. Generally values between 0-1 are acceptable enough, but you can go higher or go lower into the negatives if need be.
//The second value, 0.1 can be left untouched (or even at 0). This controls the rotation of the foot and isn't really necessary.
//Copied from CaptainBigButt's post: https://web.archive.org/web/20160608040725/https://facepunch.com/showthread.php?t=1439159
$ikautoplaylock "rfoot" 0.05 6
$ikautoplaylock "lfoot" 0.05 6

//Rename reference_male to reference_female if you're using female pm/npc animation
$sequence reference "anims/reference_male" fps 1

$animation a_proportions "anims/proportions" subtract reference 0

$sequence proportions a_proportions predelta autoplay

$Sequence "ragdoll" {
	"anims/proportions"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

//It is necessary to edit this file so the hitboxes fit your model.
//Removing this command will make the compiler auto generate bad hitboxes.
//Tutorial: https://www.youtube.com/watch?v=gK8bxcZgwEA
$include "hitbox.qci"

//Make your own collision model
$collisionjoints "breen_physics.dmx"

//You can reuse this on other player models but if you don't like the $jointconstrain limit, just edit it in HLMV.
$include "physics.qci"

////////////////////////////////////////-Playermodel Animation-////////////////////////////////////////////

//Female 
$includemodel "m_anm.mdl"

$jigglebone "Tail.001" {
	is_flexible {
        angle_constraint 25
		yaw_stiffness 30
		yaw_damping 6
        pitch_damping 6
        pitch_stiffness 30
		length 70
        
	}
}
$jigglebone "Tail.002" {
	is_flexible {
        angle_constraint 25
		yaw_stiffness 30
		yaw_damping 6
        pitch_damping 6
        pitch_stiffness 30
		length 70
        
	}
}
$jigglebone "Tail.003" {
	is_flexible {
        angle_constraint 25
		yaw_stiffness 30
		yaw_damping 6
        pitch_damping 6
        pitch_stiffness 30
		length 70
        
	}
}
$jigglebone "Tail.004" {
	is_flexible {
        angle_constraint 25
		yaw_stiffness 30
		yaw_damping 6
        pitch_damping 6
        pitch_stiffness 30
		length 70
        
	}
}
$jigglebone "Tail.005" {
	is_flexible {
        angle_constraint 25
		yaw_stiffness 30
		yaw_damping 6
        pitch_damping 6
        pitch_stiffness 30
		length 70
        
	}
}
$jigglebone "Ear.R" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Ear.R.001" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Ear.R.002" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Ear.L" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Ear.L.001" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Ear.L.002" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
$jigglebone "Galactic Hair 2" {
	is_flexible {
		yaw_stiffness 30
		yaw_damping 5
        angle_constraint 65
        pitch_damping 5
        pitch_stiffness 30
		length 50
	}
}
