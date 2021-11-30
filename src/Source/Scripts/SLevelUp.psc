scriptname SLevelUp extends Quest

Actor property PlayerRef auto
message property MLevelUp2 auto
message property MLevelUp3 auto
message property MLevelUp4 auto
message property MLevelUp5 auto
message property MLevelUp6 auto
message property MLevelUp7 auto
message property MLevelUp8 auto
message property MLevelUp9 auto
message property MLevelUp10 auto
message property MLevelUp11 auto
message property MLevelUp12 auto
message property MLevelUp13 auto
message property MLevelUp14 auto
message property MLevelUp15 auto
message property MLevelUp16 auto
message property MLevelUp17 auto
message property MLevelUp18 auto
message property MLevelUp19 auto
message property MLevelUp20 auto
message property MLevelUp21 auto
int lastPcLevel = 0

Event OnInit()
  RegisterForSingleUpdate(5)
endEvent

Event OnUpdate()
  int currentPcLevel = PlayerRef.GetLevel()

  if currentPcLevel != lastPcLevel
    ShowLevelUpMessage(currentPcLevel)
  endif

  lastPcLevel = currentPcLevel

  if currentPcLevel < 50
    RegisterForSingleUpdate(5)
  endif
endEvent

function ShowLevelUpMessage(int pcLevel)
  if pcLevel == 2
    MLevelUp2.Show()
  elseif pcLevel == 3
    MLevelUp3.Show()
  elseif pcLevel == 4
    MLevelUp4.Show()
  elseif pcLevel == 5
    MLevelUp5.Show()
  elseif pcLevel == 7
    MLevelUp6.Show()
  elseif pcLevel == 9
    MLevelUp7.Show()
  elseif pcLevel == 11
    MLevelUp8.Show()
  elseif pcLevel == 14
    MLevelUp9.Show()
  elseif pcLevel == 17
    MLevelUp10.Show()
  elseif pcLevel == 20
    MLevelUp11.Show()
  elseif pcLevel == 23
    MLevelUp12.Show()
  elseif pcLevel == 26
    MLevelUp13.Show()
  elseif pcLevel == 29
    MLevelUp14.Show()
  elseif pcLevel == 32
    MLevelUp15.Show()
  elseif pcLevel == 35
    MLevelUp16.Show()
  elseif pcLevel == 38
    MLevelUp17.Show()
  elseif pcLevel == 41
    MLevelUp18.Show()
  elseif pcLevel == 44
    MLevelUp19.Show()
  elseif pcLevel == 47
    MLevelUp20.Show()
  elseif pcLevel == 50
    MLevelUp21.Show()
  endif
endFunction
