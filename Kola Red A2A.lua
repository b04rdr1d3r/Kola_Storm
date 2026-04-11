-- Set up a basic system for the red side, we'll reside on Sayqal, and use GROUP objects with "R_EW" in the name as EW Radar Systems.
local Redwing = EASYGCICAP:New("Red CAP Operations",AIRBASE.Kola.Afrikanda,"red","R_EW")

-- Add a CAP patrol point belonging to our airbase, we'll be at 20k ft doing 400 kn, initial direction 9180 degrees (East), leg 20NM
Redwing:AddPatrolPointCAP(AIRBASE.Kola.Afrikanda,ZONE:FindByName("RCAP-2"):GetCoordinate(),20000,400,270,20)
-- Add a Squadron with template "SQ-MiG-21-1", 12 airframes, skill average, Modex starting with 11 and skin "Syria (1)"
Redwing:AddSquadron("RCAP-Su-27","RCAP-2-1",AIRBASE.Kola.Afrikanda,6,AI.Skill.AVERAGE)
Redwing:AddSquadron("RCAP-MiG-23","RCAP-2-2",AIRBASE.Kola.Afrikanda,6,AI.Skill.AVERAGE)

-- CENTRAL
Redwing:AddAirwing(AIRBASE.Kola.Severomorsk_3,"RCAP1")
-- Add a CAP patrol point belonging to our airbase, we'll be at 20k ft doing 400 kn, initial direction 9180 degrees (East), leg 20NM
Redwing:AddPatrolPointCAP(AIRBASE.Kola.Severomorsk_3,ZONE:FindByName("RCAP-1"):GetCoordinate(),20000,400,270,20)
-- Add a Squadron with template "SQ-MiG-21-1", 12 airframes, skill average, Modex starting with 11 and skin "Syria (1)"
Redwing:AddSquadron("RCAP-MiG-31","RCAP-1-1",AIRBASE.Kola.Severomorsk_3,4,AI.Skill.AVERAGE)
Redwing:AddSquadron("RCAP-MiG-29","RCAP-1-2",AIRBASE.Kola.Severomorsk_3,6,AI.Skill.AVERAGE)



-- Add a couple of zones
-- We'll defend our own border
Redwing:AddAcceptZone(ZONE:FindByName( "RedBorder" ))
-- We'll attack intruders also here - conflictzones can overlap borders(!) - limited zone of engagement
Redwing:AddConflictZone(ZONE:FindByName( "ConflictZone" ))
-- We'll leave the reds alone on their turf
Redwing:AddRejectZone(ZONE:FindByName( "BlueBorder" ))

