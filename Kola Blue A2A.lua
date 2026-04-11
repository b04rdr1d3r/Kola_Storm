-- Set up a basic system for the red side, we'll reside on Sayqal, and use GROUP objects with "R_EW" in the name as EW Radar Systems.
local Bluewing = EASYGCICAP:New("Blue CAP Operations",AIRBASE.Kola.Bardufoss,"blue","B_EW")

-- Add a CAP patrol point belonging to our airbase, we'll be at 20k ft doing 400 kn, initial direction 9180 degrees (East), leg 20NM
Bluewing:AddPatrolPointCAP(AIRBASE.Kola.Bardufoss,ZONE:FindByName("BCAP-1"):GetCoordinate(),20000,400,090,20)
-- Add a Squadron with template "SQ-MiG-21-1", 12 airframes, skill average, Modex starting with 11 and skin "Syria (1)"
Bluewing:AddSquadron("BCAP-Falcon","BCAP-1-1",AIRBASE.Kola.Bardufoss,2,AI.Skill.AVERAGE)
Bluewing:AddSquadron("BCAP-Tiger","BCAP-1-2",AIRBASE.Kola.Bardufoss,6,AI.Skill.AVERAGE)


-- Add a couple of zones
-- We'll defend our own border
Bluewing:AddAcceptZone(ZONE:FindByName( "BlueBorder" ))
-- We'll attack intruders also here - conflictzones can overlap borders(!) - limited zone of engagement
Bluewing:AddConflictZone(ZONE:FindByName( "ConflictZone" ))
-- We'll leave the reds alone on their turf
Bluewing:AddRejectZone(ZONE:FindByName( "RedBorder" ))

