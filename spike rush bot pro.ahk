#SingleInstance, Force
ListLines, Off
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen



global crosscolor   := 0xFFFFFF ;dot crosshair color
global forward_key  := "W"
global back_key     := "S"
global left_key     := "A"
global right_key    := "D"
global jump_key     := "Space"
global crouch_key   := "Ctrl"
global graffiti_key := "T"
global inspect_key  := "Y"






global go := 1
global readyfail := 0

playbutton(){
    MouseMove 960, 540, 0
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;MenuWhite1
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;MenuWhite2
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 1000, 10, 1000, 10, 0xC2C4C8,16,Fast RGB ;PLAY button
            if (ErrorLevel=0) {

                MouseMove 1000, 10, 0 ;PLAY button
                Sleep, 100
                Send {LButton DOWN}
                Send {LButton UP}
                Sleep, 100
                MouseMove 960, 540, 0
                Sleep, 1000

            } 
        
        }

    }
}

spikerushbutton(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;MenuWhite1
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;MenuWhite2
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 900, 96, 900, 96, 0x111C35,,Fast RGB ;not SPIKE RUSH mode
            if (ErrorLevel=0) {

                PixelSearch, FoundX, FoundY, 964, 984, 964, 984, 0xFFFFFF,,Fast RGB ;START button
                if (ErrorLevel=0) {

                    MouseMove 900, 96, 0 ;SPIKE RUSH button
                    Sleep, 100
                    Send {LButton DOWN} ;Press SPIKE RUSH button
                    Send {LButton UP}
                    Sleep, 100
                    MouseMove 960, 540, 0
                    Sleep, 1000

                }
                
            }

        }

    }
}

startbutton(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;MenuWhite1
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;MenuWhite2
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 900, 96, 900, 96, 0x283249,,Fast RGB ;SPIKE RUSH mode
            if (ErrorLevel=0) {

                PixelSearch, FoundX, FoundY, 1061, 984, 1061, 984, 0xFFFFFF,4,Fast RGB ;not in queue
                if not (ErrorLevel=0) {

                    PixelSearch, FoundX, FoundY, 964, 984, 964, 984, 0xFFFFFF,,Fast RGB ;START button
                    if (ErrorLevel=0) {

                        MouseMove 960, 1000, 0 ;START button
                        Sleep, 100
                        Send {LButton DOWN} ;Press START button
                        Send {LButton UP}
                        Sleep, 100
                        MouseMove 960, 540, 0
                        Sleep, 1000
                        
                    }

                }

            }

        }

    }
}

lockagent() {
    Loop 4 {
        MouseMove 666, 925, 0 ;Astra
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 750 , 925, 0 ;Breach
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 834 , 925, 0 ;Brimstone
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 918 , 925, 0 ;Cypher
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1002 , 925, 0 ;Jett
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1086 , 925, 0 ;Killjoy
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1170 , 925, 0 ;Omen
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1254 , 925, 0 ;Phoenix
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 666 , 1015, 0 ;Raze
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 750 , 1015, 0 ;Reyna
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 834 , 1015, 0 ;Sage
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 918 , 1015, 0 ;Skye
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1002 , 1015, 0 ;Sova
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1086 , 1015, 0 ;Viper
        Send {LButton DOWN}
        Send {LButton UP}
        MouseMove 1170 , 1015, 0 ;Yoru
        Send {LButton DOWN}
        Send {LButton UP}
        
    }
    MouseMove 959 , 816, 0 ;LOCK button
    Send {LButton DOWN}
    Send {LButton UP}
}

pickagent(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;not MenuWhite1
    if not (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;not MenuWhite2
        if not (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 1, 100, 1, 100, 0x7095E1,3,Fast RGB ;pickagent
            if (ErrorLevel=0) {

                readyfail := 0
                lockagent()

            }

        }

    }
}

antiafk(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;not MenuWhite1
    if not (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;not MenuWhite2
        if not (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 1, 100, 1, 100, 0x7095E1,3,Fast RGB ;not in pickagent
            if not (ErrorLevel=0) {

                PixelSearch, FoundX, FoundY, 1061, 984, 1061, 984, 0xFFFFFF,4,Fast RGB ;not in queue
                if not (ErrorLevel=0) {

                    PixelSearch, FoundX, FoundY, 960, 540, 960, 540, crosscolor,3,Fast RGB ;crosshair = in game
                    if (ErrorLevel=0) {

                        Random, ppp, 1, 25
                        if(ppp = 1) {

                            Random, rand, 8, 20
                            Send {LButton DOWN}
                            Sleep % rand * 100
                            Send {LButton UP}

                        }
                        if(ppp = 2) {

                            Send {%jump_key% DOWN}
                            Sleep % 20
                            Send {%jump_key% UP}
                            Random, rand, 8, 20
                            Send {LButton DOWN}
                            Sleep % rand * 100
                            Send {LButton UP}

                        }
                        if(ppp = 3) {

                            Send {%crouch_key% DOWN}
                            Sleep % 150
                            Send {%crouch_key% UP}

                        }
                        if(ppp = 4) {

                            Send {%jump_key% DOWN}
                            Sleep % 20
                            Send {%jump_key% UP}
                            Send {%inspect_key% DOWN}
                            Sleep % 50
                            Send {%inspect_key% UP}

                        }
                        if(ppp = 5) {

                            Send {%inspect_key% DOWN}
                            Sleep % 50
                            Send {%inspect_key% UP}

                        }
                        if(ppp = 6) {

                            Send {%forward_key% DOWN}
                            Sleep % 1000
                            Send {%forward_key% UP}

                        }
                        if(ppp = 7) {

                            Send {%back_key% DOWN}
                            Sleep % 1000
                            Send {%back_key% UP}

                        }
                        if(ppp = 8) {

                            Send {%left_key% DOWN}
                            Sleep % 1000
                            Send {%left_key% UP}

                        }
                        if(ppp = 9) {

                            Send {%right_key% DOWN}
                            Sleep % 1000
                            Send {%right_key% UP}

                        }
                        if(ppp = 10) {

                            Send {3 DOWN}
                            Send {3 UP}
                            Sleep % 10
                            Send {2 DOWN}
                            Send {2 UP}
                            Sleep % 10
                            Send {1 DOWN}
                            Send {1 UP}

                        }
                        if(ppp = 11) {

                            Send {%graffiti_key% DOWN}
                            Send {%graffiti_key% UP}

                        }
                        if(ppp = 12) {

                            hello()

                        }

                    }
                    
                }

            }

        }

    }
}

partynotready(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;MenuWhite1
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;MenuWhite2
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 1020, 984, 1020, 984, 0x5F2F2F,,Fast RGB ;party not ready
            if (ErrorLevel=0) {

                readyfail := readyfail + 1
                if (readyfail > 2){
                    MouseMove 500, 96, 0 ;unrated
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 680, 96, 0 ;competitive
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 900, 96, 0 ;spike rush
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 1000, 96, 0 ;deathmatch
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 1200, 96, 0 ;escalation
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 1180, 30, 0 ;career
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}
                    Sleep, 500
                    MouseMove 1000, 10, 0 ;PLAY button
                    Sleep, 100
                    Send {LButton DOWN}
                    Send {LButton UP}

                    MouseMove 960, 540, 0
                }
                Sleep, 1000
            }

        }

    }
}

cheaterdetected(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xD3373A,4,Fast RGB ;cheater red 1
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xD3373A,4,Fast RGB ;cheater red 2
        if (ErrorLevel=0) {

            MouseMove 961, 917, 0
            Sleep, 100
            Send {LButton DOWN}
            Send {LButton UP}
            Sleep, 1000

        }

    }
}

killvalorant(){
    if (readyfail > 9){
        WinKill ,VALORANT
        readyfail := 0
        Sleep, 10000
    }
}

restartvalorant(){
    if WinExist("VALORANT"){
        if not WinActive("VALORANT") {
            WinActivate ,VALORANT
        }
    }else {
        Run, Valorant.lnk
        Sleep, 10000
    }
}

afkoffense(){
    PixelSearch, FoundX, FoundY, 1300, 400, 1300, 400, 0x1E2328,,Fast RGB ;afk offense
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 600, 400, 600, 400, 0x1E2328,,Fast RGB ;afk offense
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 1070, 659, 1070, 659, 0xDF5D58,16,Fast RGB ;i understand
            if (ErrorLevel=0) {
                MouseMove 1070, 659, 0
                Sleep, 100
                Send {LButton DOWN}
                Send {LButton UP}
                MouseMove 960, 540, 0
                Sleep, 1000
            }

        }

    }
}

connectionerror(){
    PixelSearch, FoundX, FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB ;not MenuWhite1
    if not (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB ;not MenuWhite2
        if not (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 700, 650, 700, 650, 0x1F262D,1,Fast RGB ;connection error
            if (ErrorLevel=0) {

                PixelSearch, FoundX, FoundY, 870, 650, 870, 650, 0x51565c,1,Fast RGB ;quit botton
                if (ErrorLevel=0) {
                    
                    WinKill ,VALORANT
                    
                }

            }

        }

    }
}

valerror(){
    PixelSearch, FoundX, FoundY, 500, 670, 500, 670, 0x14212E,,Fast RGB ;Val ERROR
    if (ErrorLevel=0) {

        PixelSearch, FoundX, FoundY, 800, 670, 800, 670, 0x49525D,,Fast RGB ;quit button
        if (ErrorLevel=0) {

            PixelSearch, FoundX, FoundY, 943, 683, 943, 683, 0xFFFFFF,4,Fast RGB ;quit button
            if (ErrorLevel=0) {

                WinKill ,VALORANT

            }

        }

    }
}

riotclientplay(){
    WinActivate ,Riot Client
    Sleep, 100
    WinGetPos, riotX, riotY, riotW, riotH, Riot Client
    MouseMove riot + riotW / 2, riotY + riotH / 2, 0
    Sleep, 100
    Send {LButton DOWN}
    Send {LButton UP}
    MouseMove 960, 540, 0
    Sleep, 1000
}

hello(){
    Send {LShift DOWN}
    Sleep, 50
    Send {Enter}
    Send {LShift UP}
    Sleep, 100
    Send {Text}https://github.com/worse-666/VALORANT_spike_rush_xp_bot
    Sleep, 100
    Send {Enter}
    Sleep, 100
}

while TRUE {
    if (go = 1) {
        if WinExist("Riot Client") {
            riotclientplay()
        }
        if WinActive("VALORANT") {
           playbutton()
           spikerushbutton()
           startbutton()
           pickagent()
           antiafk()
           partynotready()
           cheaterdetected()
           killvalorant()
           afkoffense()
           connectionerror()
           valerror()
        }
        restartvalorant()
    }
}

F6::
go := go * -1
KeyWait, F6
Return

F7::ExitApp
L::ExitApp
