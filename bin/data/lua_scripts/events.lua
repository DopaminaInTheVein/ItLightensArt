print('This is lua')

SLB.using( SLB )

p = Public( )
h = Handle()
cam = Camera()

function CallFunction(func)
	if _G[func] then _G[func]()
	else
		p:print("function "..func.." does not exist!\n")
	end
end

function OnAction( param )
	p:print( "OnAction: "..param.."\n" )
	CallFunction("OnAction_"..param)
	--specialActionSettings(0.7);
	--setCameraRotationSensibility(60.5);
	--setCameraSpeed(4.0);
	--setCameraSpeedUnlocked(10.0);
	--triggerScientistBusy();
end

function OnActionSci( param )
	p:print( "OnActionSci: "..param.."\n" )
	CallFunction("OnActionSci_"..param)
	--specialActionSettings(0.7);
	--setCameraRotationSensibility(60.5);
	--setCameraSpeed(4.0);
	--setCameraSpeedUnlocked(10.0);
end

function OnActionMole( param )
	p:print( "OnActionMole: "..param.."\n" )
	CallFunction("OnActionMole_"..param)
	--specialActionSettings(0.7);
	--setCameraRotationSensibility(60.5);
	--setCameraSpeed(4.0);
	--setCameraSpeedUnlocked(10.0);
end

function OnEnter( param )
	p:print( "OnEnter: "..param.."\n" ) 
	CallFunction("OnEnter_"..param)
	--if _G["OnEnter_"..param] then _G["OnEnter_"..param](handle) 
	--else
	--	p:print("function OnEnter_"..param.." does not exist!\n")
	--end
end

function OnLeave( param )
	p:print( "OnLeave: ".. param.."\n" )
	CallFunction("OnLeave_"..param)
end

function OnGameStart( param )
	p:print( "OnGameStart: "..param.."\n" )
	p:play_music("event:/OnGameStart")
	--triggerGuardFormation();
	--p:exec_command( "triggerGuardFormation();", 15 )
	cam:run_cinematic("CinematicIntro", 10)
end

function OnGameEnd( param )
	p:print( "OnGameEnd: "..param.."\n" )
end

function OnGuardAttack( reaction_time )
	p:print( "OnGuardAttack: "..reaction_time.."\n" )
	p:play_voice("event:/OnGuardAttack")
end

function OnGuardAttackEnd( reaction_time )
	p:print( "OnGuardAttack: "..reaction_time.."\n" )
end

function OnGuardOvercharged( param )
	p:print( "OnGuardOvercharged: "..param.."\n" )
end

function OnGuardBoxHit( param )
	p:print( "OnGuardBoxHit: "..param.."\n" )
end

function OnGuardRemoveBox( reaction_time )
	p:print( "OnGuardRemoveBox: "..reaction_time.."\n" )
end

function OnLevelStart( param )
	p:print("OnLevelStart\n")
	CallFunction("OnLevelStart_"..param)
end

function OnZoneStart001( param )
	p:print( "OnZoneStart001: "..param.."\n" )
end

function OnZoneEnd001( param )
	p:print( "OnZoneEnd001: "..param.."\n" )
end

function OnTimeout( param )
	p:print( "OnTimeout: "..param.."\n" )
end

function OntTimerStart( param )
	p:print( "OntTimerStart: "..param.."\n" )
end

function OnPlayerDead( param )
	p:print( "OnPlayerDead: "..param.."\n" )
end

function OnInterruptHit( param )
	p:print( "OnInterruptHit: "..param.."\n" )
end

function OnStartReceiveHit( param )
	p:print( "OnStartReceiveHit: "..param.."\n" )
end

function OnEndReceiveHit( param )
	p:print( "OnEndReceiveHit: "..param.."\n" )
end

function OnEmitParticles( param )
	p:print( "OnEmitParticles: "..param.."\n" )
end

function OnChangePolarity( param )
	p:print( "OnChangePolarity: "..param.."\n" )
	p:play_sound("event:/OnChangePolarity")
end

function OnPickupBox( param )
	p:print( "OnPickupBox: "..param.."\n" )
end

function OnLeaveBox( param )
	p:print( "OnLeaveBox: "..param.."\n" )
end

function OnPossess( param )
	p:print( "OnPossess: "..param.."\n" )
end

function OnUnpossess( param )
	p:print( "OnUnpossess: "..param.."\n" )
end

function OnDash( param )
	p:print( "OnDash: "..param.."\n" )
end

function OnBlink( param )
	p:print( "OnBlink: "..param.."\n" )
end

function OnBreakWall( param )
	p:print( "OnBreakWall: "..param.."\n" )
end

function OnRechargeDrone( param )
	p:print( "OnRechargeDrone: "..param.."\n" )
	p:play_sound("event:/OnUseGenerator")
end

function OnUseCable( param )
	p:print( "OnUseCable: "..param.."\n" )
end

function OnUseGenerator( param )
	p:print( "OnUseGenerator: "..param.."\n" )
	p:play_sound("event:/OnUseGenerator")
end

function OnStun( param )
	p:print( "OnStun: "..param.."\n" )
end

function OnStunned( param )
	p:print( "OnStunned: "..param.."\n" )
	p:play_ambient("event:/OnStunned")
end

function OnStunnedEnd( param )
	p:print( "OnStunnedEnd: "..param.."\n" )
end

function OnLiquid( param )
	p:print( "OnLiquid: "..param.."\n" )
end

function OnBeingAttracted( param )
	p:print( "OnBeingAttracted: "..param.."\n" )
end

function OnOvercharge( param )
	p:print( "OnOvercharge: "..param.."\n" )
	p:play_sound("event:/OnOvercharge")
	specialActionSettings(0.7);
end

function OnJump( param )
	p:print( "OnDoubleJump: "..param.."\n" )
	p:play_sound("event:/OnJump")
end

function OnDoubleJump( param )
	p:print( "OnDoubleJump: "..param.."\n" )
	p:play_sound("event:/OnDoubleJump")
end

function OnDetected( param )
	p:print( "OnDetected: "..param.."\n" )
	p:play_sound("event:/OnDetected")
end

function OnBeaconDetect( param )
	p:print( "OnBeaconDetect: "..param.."\n" )
end

function OnEnterPC( param )
	p:print( "OnEnterPC: "..param.."\n" )
end

function OnLeavePC( param )
	p:print( "OnLeavePC: "..param.."\n" )
end

function OnDoorClosed()
	p:print( "OnDoorClosed\n")
end

function OnDoorOpened()
	p:print( "OnDoorOpened\n")
end

function OnDoorClosing()
	p:print( "OnDoorClosing\n")
end

function OnDoorOpening()
	p:print( "OnDoorOpening\n")
end

--Elevator
--------------------------------
function OnElevatorUp( param )
	p:print( "OnElevatorUp\n")
	CallFunction("OnElevatorUp_"..param)
end

function OnElevatorDown( param )
	p:print( "OnElevatorDown\n")
	CallFunction("OnElevatorDown_"..param)
end

function OnElevatorGoingUp( param )
	p:print( "OnElevatorGoingUp\n")
	CallFunction("OnElevatorGoingUp_"..param)
end

function OnElevatorGoingDown( param)
	p:print( "OnElevatorGoingDown\n")
	CallFunction("OnElevatorGoingDown_"..param)
end
--------------------------------

function OnCinematicSkipped( param )
	p:print( "OnCinematicSkipped\n")
	CallFunction("OnCinematicSkipped_"..param)
end

function OnCinematicEnd( param )
	p:print( "OnCinematicEnd\n")
		CallFunction("OnCinematicEnd_"..param)
end