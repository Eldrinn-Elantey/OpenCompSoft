--WebWyse 1.0 installer by Compys S&N Systems (2022). 
--Configuration zone.

--Name of the product being installed.
local PRODUCTNAME = 'Midday Commander Plus'

--Strings for small background window. nil for disabled. Max 4 lines.
local BACKWINTEXT = {'Midday Commander Plus', '', 'Not Copyright (C) 2015-2016 Zer0Galaxy, Neo, Totoro', '            2020-2022 Compys S&N Systems'}

--The text that will be shown in the console after a successful installation. nil for disabled.
local EXITNOTE = "Type \"mc\" to run it"

--License for product. nil to use LICENSEURL or disabled.
local LICENSE = [[For more information go to:
https://github.com/Bs0Dd/OpenCompSoft/blob/master/MiddayCommanderPlus/README.md

------------------------
                 
MIT License

Copyright (c) 2018 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.]]

--URL for license to download from network. nil for disabled.
local LICENSEURL = nil

--Default installation path. nil for empty.
local INSTALLPATH = '/usr/bin/'

--Minimum space (in bytes) required for installation. nil for disable checking.
local MINSPACE = 23552

--Minimal requirements for installation. nil for disable checking.
local MINREQ = {
    CPU = 1, --Minimal CPU tier required for installation. nil for disable checking.
    VIDEO = 1, --Minimal videosystem tier required for installation. nil for disable checking
    RAM = 262144, --Minimum RAM size required for installation. nil for disable checking.
    COMPONENTS = nil --Components required for installation. nil for none.
}

--Colors for Tier 3 Videosystem.
local T3BACKCOL = 0xFFFFFF -- Color for the background.
local T3NORMALCOL = {0xFFFFFF, 0x006DFF} --Text and background colors for the windows.
local T3BUTTCOL = {0xFFFFFF, 0x5A5A5A} --Text and background colors for the buttons.
local T3FORMCOL = {0x000000, 0xE1E1E1} --Text and background colors for the forms (license view, path input).
local T3FSELCOL = {0xFFFFFF, 0x5A5A5A} --Text and background colors for selected item in the form.
local T3ERRCOL = {0xFFFFFF, 0xFF0000} --Text and background colors for the error windows.
local T3REQOKCOL = {0x00FF00, 0x006DFF} --Text and background colors for components that meets minimal requirements.
local T3REQERCOL = {0xFFFFFF, 0xFF0000} --Text and background colors for components that does not meet minimal requirements.
local T3PROGRBLK = 0xFFFFFF -- Color for the blank part of the progress bar.
local T3PROGRFIL = 0x00FF00 -- Color for the filled part of the progress bar.

--Colors for Tier 2 Videosystem.
local T2BACKCOL = 0xFFFFFF -- Color for the background.
local T2NORMALCOL = {0xFFFFFF, 0x006DFF} --Text and background colors for the windows.
local T2BUTTCOL = {0xFFFFFF, 0x3C3C3C} --Text and background colors for the buttons.
local T2FORMCOL = {0x000000, 0xE1E1E1} --Text and background colors for the forms (license view, path input).
local T2FSELCOL = {0xFFFFFF, 0x3C3C3C} --Text and background colors for selected item in the form.
local T2ERRCOL = {0xFFFFFF, 0xFF0000} --Text and background colors for the error windows.
local T2REQOKCOL = {0x00FF00, 0x006DFF} --Text and background colors for components that meets minimal requirements.
local T2REQERCOL = {0xFFFFFF, 0xFF0000} --Text and background colors for components that does not meet minimal requirements.
local T2PROGRBLK = 0xFFFFFF -- Color for the blank part of the progress bar.
local T2PROGRFIL = 0x00FF00 -- Color for the filled part of the progress bar.

--Colors for Tier 1 Videosystem. Not recommended to change.
local T1NORMALCOL = {0x000000, 0xFFFFFF} --Text and background colors for the windows.
local T1BUTTCOL = {0xFFFFFF, 0x000000} --Text and background colors for the buttons.
local T1FORMCOL = {0xFFFFFF, 0x000000} --Text and background colors for the forms (license view, path input).
local T1FSELCOL = {0x000000, 0xFFFFFF} --Text and background colors for selected item in the form.
local T1ERRCOL = {0x000000, 0xFFFFFF} --Text and background colors for the error windows.
local T1REQOKCOL = {0x000000, 0xFFFFFF} --Text and background colors for components that meets minimal requirements.
local T1REQERCOL = {0xFFFFFF, 0x000000} --Text and background colors for components that does not meet minimal requirements.
local T1PROGRBLK = 0x000000 -- Color for the blank part of the progress bar.
local T1PROGRFIL = 0xFFFFFF -- Color for the filled part of the progress bar.

--Basic files to download to your computer.
local FILES = {
    {
        url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/mc.lua",
        path = "mc.lua",
        absolute = false
    },
    {
        url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/english.mcl",
        path = "/usr/misc/english.mcl",
        absolute = true
    },
    {
        url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/standard.mct",
        path = "/usr/misc/standard.mct",
        absolute = true
    }
}

--Additional components to download to your computer.
local ADDITIONAL = {
    {
        name = "Install Russian language",
        selected = true,
        size = 2822,
        files = {
                 {
                    url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/russian.mcl",
                    path = "/usr/misc/russian.mcl",
                    absolute = true
                 }
        }
    },
    {
        name = "Install additional themes",
        selected = true,
        size = 326,
        files = {
                 {
                    url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/redstone.mct",
                    path = "/usr/misc/redstone.mct",
                    absolute = true
                 },
                 {
                    url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/darkness.mct",
                    path = "/usr/misc/darkness.mct",
                    absolute = true
                 }
                }
    },
    {
        name = "Install Blyadian language",
        selected = false,
        size = 2780,
        files = {
                 {
                    url = "https://raw.githubusercontent.com/Bs0Dd/OpenCompSoft/master/MiddayCommanderPlus/Files/blyadian.mcl",
                    path = "/usr/misc/blyadian.mcl",
                    absolute = true
                 }
        }
    }
}

---------------------------------------------------------------------------------------------------------------

local a=require('component')local b=require('computer')local c=require('filesystem')local d=require('term')local e=require('event')local f=require('unicode')local g=f.len;local h=f.sub;local i=require('keyboard')local j=a.gpu;if not a.isAvailable('internet')then io.stderr:write("ERROR: Internet card is not found\n\n")return end;local k=a.internet;local l,m=j.maxResolution()j.setDepth(j.maxDepth())j.setResolution(l,m)local n,o=1,1;local p=1;local q,r;local s,t;local u,v,w=1,1,1;local x=INSTALLPATH or''local y,z,A,B;local C,D,E,F,G=true,true,true,true;local H,I,J=1,1,1;local K,L,M,N,O=0,0,0,0;if j.maxDepth()>1 then n,o=math.ceil((l-50)/2),math.ceil(m/2)-4 end;local P,Q,R,S,T;local U,V,W,X,Y;if j.maxDepth()==8 then P=T3NORMALCOL;Q=T3BUTTCOL;R=T3FORMCOL;S=T3FSELCOL;T=T3ERRCOL;U=T3BACKCOL;V=T3REQOKCOL;W=T3REQERCOL;X=T3PROGRBLK;Y=T3PROGRFIL elseif j.maxDepth()==4 then P=T2NORMALCOL;Q=T2BUTTCOL;R=T2FORMCOL;S=T2FSELCOL;T=T2ERRCOL;U=T2BACKCOL;V=T2REQOKCOL;W=T2REQERCOL;X=T2PROGRBLK;Y=T2PROGRFIL else P=T1NORMALCOL;Q=T1BUTTCOL;R=T1FORMCOL;S=T1FSELCOL;T=T1ERRCOL;U=P[2]V=T1REQOKCOL;W=T1REQERCOL;X=T1PROGRBLK;Y=T1PROGRFIL end;local function Z(_)j.setForeground(_[1])j.setBackground(_[2])end;local function a0(a1)local a2=0;for a3,a4 in ipairs(a1)do if g(a4)>a2 then a2=g(a4)end end;return a2 end;local function a5(a6)if a6:sub(-1)~="\n"then a6=a6 .."\n"end;return a6:gmatch("(.-)\n")end;local function a7(a8)local a9={"Kb","Mb","Gb"}if a8<1024 then return a8 .."b"end;local aa=0;while a8>=1024 and aa<#a9 do aa=aa+1;a8=a8/1024 end;return math.floor(a8*10)/10 ..a9[aa]end;local function ab(ac,ad,ae,a1,af)Z(af)j.set(ac,ad,string.rep(' ',ae+2))for ag,a4 in ipairs(a1)do if g(a4)<ae then local ah,ai=(ae-g(a4))/2;if ah%1==0 then ai=ah else ah=math.ceil(ah)ai=ah-1 end;a4=string.rep(' ',ah)..a4 ..string.rep(' ',ai)end;j.set(ac,ad+ag,' '..a4 ..' ')end;if j.maxDepth()==1 then return end;j.set(ac,ad+#a1+1,string.rep(' ',ae+2))Z({U,0x000000})j.fill(ac+ae+2,ad+1,1,#a1+1,' ')j.set(ac+2,ad+#a1+2,string.rep('▄',ae+1))end;local function aj()local ak=n+50;Z({U,0x000000})j.fill(ak,o+1,1,15,' ')j.set(n+2,o+16,string.rep('▄',49))end;local function al()Z(P)j.fill(n,o,50,16,' ')j.fill(n,o,50,16,' ')j.set(n+2,o+13,string.rep('─',46))end;local function am(an)if BACKWINTEXT and j.maxDepth()>1 then if#BACKWINTEXT>4 then while#BACKWINTEXT>4 do table.remove(BACKWINTEXT)end end;local ao=a0(BACKWINTEXT)local ac,ad=math.ceil((l-ao-2)/2),math.ceil(m/10)-1;ab(ac,ad,ao,BACKWINTEXT,P)end;if not an then aj()end end;local function ap(aq,ar)table.insert(aq,'')table.insert(aq,'')j.setBackground(U)j.fill(1,1,l,m,' ')local ao=a0(aq)local ac,ad=math.ceil((l-ao)/2),math.ceil(m/2)am(true)ab(ac,ad,ao,aq,ar)return ac,ad,ao end;local function as(aq,ar)local ac,ad,ao=ap(aq,ar)Z(Q)local at=math.ceil(ac+ao/2-3)j.set(at,ad+#aq,"   Ok   ")while true do local au,a3,av,aw=e.pull()if au=="key_down"and av==13 or au=="touch"and aw==ad+#aq and av>=at and av<=at+7 then j.setBackground(U)j.fill(1,1,l,m,' ')am()al()q[p]()return end end end;local function ax(aq)local ac,ad=ap(aq,T)Z(Q)j.set(ac+3,ad+#aq," (Y)es  ")j.set(ac+17,ad+#aq,"  (N)o  ")while true do local au,a3,av,aw=e.pull()if au=="key_down"then if av==78 or av==110 then am()al()q[p]()return true elseif av==89 or av==121 then return false end elseif au=="touch"then if aw==ad+#aq and av>=ac+3 and av<=ac+10 then return false elseif aw==ad+#aq and av>=ac+17 and av<=ac+24 then am()al()q[p]()return true end end end end;local function ay(az)if az then if ax({" Are you sure you want to ","abort the installation?"})then return end end;Z({0xFFFFFF,0x000000})d.clear()print("WebWyse 1.0 - 2022 (c) Compys S&N Systems\n")if not az and EXITNOTE then print(EXITNOTE.."\n")end;os.exit()end;local function aA()j.set(n+6,o+1,"Welcome to the WebWyse 1.0 installer!")j.set(n+7,o+3,"This installer will help to install")j.set(n+25-g(PRODUCTNAME)/2,o+4,PRODUCTNAME)j.set(n+17,o+5,"on your computer.")j.set(n+6,o+8,"Follow WebWyse instructions to install")j.set(n+12,o+9,"and configure the software.")j.set(n+10,o+10,"Press \"Next →\" (→) to continue")j.set(n+11,o+11,"or \"Cancel\" (ALT-X) to exit.")Z(Q)j.set(n+3,o+14," Cancel ")j.set(n+39,o+14," Next → ")end;local function aB()while true do local au,a3,av,aw=e.pull()if au=="key_down"then if i.isAltDown()and(av==88 or av==120)then ay(true)elseif aw==205 then return end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+39 and av<=n+46 then return end end end end;local function aC()j.fill(n+3,o+3,44,10,' ')for aD=0,9 do j.set(n+3,o+aD+3,s[v+aD]and h(s[v+aD],u,u+43)or'')end end;local function aE()Z(R)s={"Loading from internet..."}aC()local aF="Failed to get license text: "local aG,aH=pcall(k.request,LICENSEURL)if not aG then LICENSE=aF..aH.."."return end;if not aH then LICENSE=aF.."invalid URL-address."return end;local aI,aJ=aH.finishConnect()local aK=b.uptime()while aI==false do aI,aJ=aH.finishConnect()if b.uptime()>aK+40 then break end end;if aI==nil then LICENSE=aF..(aJ==LICENSEURL and"can't get file."or aJ..".")return end;local aL,aM=aH.response()local aK=b.uptime()while aL==nil do aL,aM=aH.response()if b.uptime()>aK+40 then break end end;if aL==nil then LICENSE=aF.."timeout expired."return elseif aL~=200 then LICENSE=aF.."received code "..math.floor(aL).." ("..aM..")."return end;LICENSE=""while true do local aN,aJ=aH.read(math.huge)if aN then LICENSE=LICENSE..aN else aH:close()if aJ then LICENSE=aF..aJ.."."else return end end end end;local function aO()j.set(n+9,o+1,"Do you agree with this license?")Z(Q)j.set(n+3,o+14,"  (N)o  ")j.set(n+30,o+14," (B)ack ")j.set(n+39,o+14," (Y)es  ")if not s then if not LICENSE and LICENSEURL then aE()end;s={}for aP in a5(LICENSE)do table.insert(s,aP)end;w=a0(s)end;t=#s>9 and#s-9 or#s;Z(R)aC()end;local function aQ()while true do local au,a3,av,aw,aR=e.pull()if au=="key_down"then if av==78 or av==110 then ay(true)elseif av==66 or av==98 then p=p-2;return elseif av==89 or av==121 then return elseif aw==200 then v=v-1<1 and 1 or v-1;aC()elseif aw==208 then v=v+1>t and t or v+1;aC()elseif aw==203 then u=u-1<1 and 1 or u-1;aC()elseif aw==205 then u=u+1>w-43 and w-43 or u+1;aC()elseif aw==199 then u=1;aC()elseif aw==207 then u=w-43;aC()elseif aw==201 then v=v-10<1 and 1 or v-10;aC()elseif aw==209 then v=v+10>t and t or v+10;aC()end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+30 and av<=n+37 then p=p-2;return elseif aw==o+14 and av>=n+39 and av<=n+46 then return end elseif au=="scroll"then v=v-aR>t and t or v-aR<1 and 1 or v-aR;aC()end end end;local function aS(aT,aU,aV,aW)local aq={}if aT==nil or type(aT)=='table'and#aT==0 then aq[1]="Required: Not defined"elseif aV==3 then local aX="Required: "local aY="You have: "for a3,aZ in pairs(aT)do if#aX+#aZ>49 then table.insert(aq,aX:sub(1,-2))aX=""end;aX=aX..aZ..", "end;table.insert(aq,aX:sub(1,-3))for a3,aZ in pairs(aU)do if#aY+#aZ>49 then table.insert(aq,aY:sub(1,-2))aY=""end;aY=aY..aZ..", "end;table.insert(aq,aY:sub(1,-3))elseif aV==2 then aq[1]="Required: "..a7(aT)aq[2]="You have: "..a7(aU)else aq[1]="Required: Tier "..aT;aq[2]="You have: Tier "..aU end;as(aq,aW and P or T)end;local function a_()G=true;if MINREQ.CPU and type(MINREQ.CPU)=='number'then local b0=b.getDeviceInfo()for a3,b1 in pairs(b0)do if b1.description=="CPU"or b1.description=="APU"then y=tonumber(b1.product:match('%d'))break end end;C=y>=MINREQ.CPU;if not C then G=false end end;if MINREQ.VIDEO and type(MINREQ.VIDEO)=='number'then local b2=j.maxDepth()z=b2==8 and 3 or b2==4 and 2 or 1;D=z>=MINREQ.VIDEO;if not D then G=false end end;if MINREQ.RAM and type(MINREQ.RAM)=='number'then A=b.totalMemory()E=A>=MINREQ.RAM;if not E then G=false end end;if MINREQ.COMPONENTS and type(MINREQ.COMPONENTS)=='table'then B={}for a3,b3 in pairs(MINREQ.COMPONENTS)do if a.isAvailable(b3)then table.insert(B,b3)end end;F=#B==#MINREQ.COMPONENTS;if not F then G=false end end;if G then j.set(n+12,o+1,"Your computer fully meets")else j.set(n+11,o+1,"Your computer does not meet")j.set(n+5,o+3,"Select the desired section for details.")end;j.set(n+12,o+2,"the minimum requirements.")j.set(n+10,o+5,"(P)rocessor   :")j.set(n+10,o+7,"(M)emory      :")j.set(n+10,o+9,"(V)ideosystem :")j.set(n+10,o+11,"(С)omponents  :")local b4,aD={C,E,D,F},5;for a3,b1 in pairs(b4)do Z(b1 and V or W)j.set(n+26,o+aD,b1 and"Meets"or"Does not meet")aD=aD+2 end;Z(Q)j.set(n+3,o+14," Cancel ")j.set(n+30,o+14," ← Back ")j.set(n+39,o+14," Next → ")end;local function b5()while true do local au,a3,av,aw,aR=e.pull()if au=="key_down"then if i.isAltDown()and(av==88 or av==120)then ay(true)elseif aw==203 then p=p-2;return elseif aw==205 or av==13 then if G then return elseif not ax({"Are you sure you want to","install this software?","","It may not work correctly!"})then am()al()return end elseif av==112 or av==80 then aS(MINREQ.CPU,y,1,C)elseif av==109 or av==77 then aS(MINREQ.RAM,A,2,E)elseif av==118 or av==86 then aS(MINREQ.VIDEO,z,1,D)elseif av==99 or av==67 then aS(MINREQ.COMPONENTS,B,3,F)end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+30 and av<=n+37 then p=p-2;return elseif aw==o+14 and av>=n+39 and av<=n+46 then if G then return elseif not ax({"Are you sure you want to","install this software?","","It may not work correctly!"})then am()al()return end elseif aw==o+5 and av>=n+10 and av<=n+38 then aS(MINREQ.CPU,y,1,C)elseif aw==o+7 and av>=n+10 and av<=n+38 then aS(MINREQ.RAM,A,2,E)elseif aw==o+9 and av>=n+10 and av<=n+38 then aS(MINREQ.VIDEO,z,1,D)elseif aw==o+11 and av>=n+10 and av<=n+38 then aS(MINREQ.COMPONENTS,B,3,F)end end end end;local function b6()j.fill(n+3,o+3,44,10,' ')for aD=0,#ADDITIONAL-J<9 and#ADDITIONAL-J or 9 do if aD+1==H then Z(S)j.fill(n+3,o+aD+3,44,1," ")end;j.set(n+6,o+aD+3,g(ADDITIONAL[J+aD].name)>39 and h(ADDITIONAL[J+aD].name,0,39)..".."or ADDITIONAL[J+aD].name)if ADDITIONAL[J+aD].selected then if j.maxDepth()>1 then j.setForeground(0x00FF00)end;j.set(n+4,o+aD+3,"√")else if j.maxDepth()>1 then j.setForeground(0xFF0000)end;j.set(n+4,o+aD+3,"╳")end;if aD+1==H then j.setBackground(R[2])end;j.setForeground(R[1])end end;local function b7()if J>1 then J=J-1;b6()else if H>1 then H=H-1;b6()end end end;local function b8()local b9=#ADDITIONAL<10 and#ADDITIONAL or 10;if H+1>b9 then if J+9<#ADDITIONAL then J=J+1;b6()end else H=H+1;b6()end end;local function ba()j.set(n+6,o+1,"You can install additional components:")Z(Q)j.set(n+3,o+14," Cancel ")j.set(n+30,o+14," ← Back ")j.set(n+39,o+14," Next → ")Z(R)b6()end;local function bb()while true do local au,a3,av,aw,aR=e.pull()if au=="key_down"then if i.isAltDown()and(av==88 or av==120)then ay(true)elseif aw==203 then p=p-2;return elseif aw==205 then return elseif aw==200 then b7()elseif aw==208 then b8()elseif aw==57 or aw==28 then ADDITIONAL[H+J-1].selected=not ADDITIONAL[H+J-1].selected;b6()end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+30 and av<=n+37 then p=p-2;return elseif aw==o+14 and av>=n+39 and av<=n+46 then return elseif aw>=o+3 and aw<=o+12 and av>=n+3 and av<=n+46 then ADDITIONAL[aw-o-3+J].selected=not ADDITIONAL[aw-o-3+J].selected;b6()end elseif au=="scroll"then if aR==1 then b7()else b8()end end end end;local function bc()if x==""then as({"Installation path cannot be empty!","Please enter the path."},T)return false end;if not c.exists(x)then local bd,be=c.makeDirectory(x)if not bd then as({"Failed to make directory:",be..".","Please check if path is correct and try again."},T)return false end;return true end;local bf=c.get(x)if bf.isReadOnly()then as({"This disk is write protected!","Please unprotect the disk and try again."},T)return false end;if MINSPACE then local bg=bf.spaceTotal()-bf.spaceUsed()if bg<MINSPACE then as({"Not enough space for installation!","Please free at least "..a7(MINSPACE-bg),"of space and try again."},T)return false end end;return true end;local function bh()local bi;if g(x)>43 then bi='..'..h(x,-41)else bi=x end;d.setCursor(n+3+g(bi),o+9)j.fill(n+3,o+9,44,1,' ')j.set(n+3,o+9,bi)end;local function bj()j.set(n+4,o+1,"Select a folder to install program files.")j.set(n+3,o+4,"Be aware that some files (such as libraries)")j.set(n+8,o+5,"may be installed in system folders.")j.set(n+3,o+8,"Install to:")local bk=MINSPACE or 0;if ADDITIONAL and#ADDITIONAL>0 then for a3,b1 in pairs(ADDITIONAL)do if b1.selected then bk=bk+b1.size end end end;if bk>0 then j.set(n+3,o+11,"Space required: "..a7(bk))end;Z(Q)j.set(n+3,o+14," Cancel ")j.set(n+30,o+14," ← Back ")j.set(n+39,o+14," Next → ")Z(R)bh()end;local function bl()while true do local au,a3,av,aw,aR=d.pull()if au=="key_down"then if i.isAltDown()and(av==88 or av==120)then ay(true)elseif aw==203 then p=p-2;return elseif aw==205 or av==13 then if bc()then return end elseif av==8 then x=h(x,1,-2)bh()elseif av==0 or av==9 or av==127 then else x=x..f.char(av)bh()end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+30 and av<=n+37 then p=p-2;return elseif aw==o+14 and av>=n+39 and av<=n+46 then if bc()then return end end elseif eve=="clipboard"then x=x..av;bh()end end end;local function bm()j.set(n+12,o+1,"WebWyse is ready to install")j.set(n+25-g(PRODUCTNAME)/2,o+2,PRODUCTNAME)j.set(n+17,o+3,"to your computer.")j.set(n+9,o+6,"Click \"Go\" to begin installation.")j.set(n+13,o+9,"Or click \"Back\" to change")j.set(n+15,o+10,"installation options.")Z(Q)j.set(n+3,o+14," Cancel ")j.set(n+30,o+14," ← Back ")j.set(n+39,o+14,"   Go   ")end;local function bn()while true do local au,a3,av,aw,aR=e.pull()if au=="key_down"then if i.isAltDown()and(av==88 or av==120)then ay(true)elseif aw==203 then p=p-2;return elseif av==13 then return end elseif au=="touch"then if aw==o+14 and av>=n+3 and av<=n+10 then ay(true)elseif aw==o+14 and av>=n+30 and av<=n+37 then p=p-2;return elseif aw==o+14 and av>=n+39 and av<=n+46 then return end end end end;local function bo()j.set(n+2,o+5,string.rep(" ",46))j.set(n+2,o+7,string.rep(" ",46))j.setForeground(P[1])local bp="Downloading file: "..O;if g(bp)>46 then bp=bp:sub(1,44)..".."end;j.set(n+25-g(bp)/2,o+5,bp)local bq="Downloaded data: "..a7(N).."/"..a7(M)j.set(n+25-g(bq)/2,o+7,bq)local br="Downloaded files: "..L.."/"..K;j.set(n+25-g(br)/2,o+11,br)j.setForeground(X)j.set(n+4,o+6,string.rep("━",42))j.set(n+4,o+10,string.rep("━",42))j.setForeground(Y)if M>0 then local bs=math.ceil(42*N/M)j.set(n+4,o+6,string.rep("━",bs))end;local bt=math.ceil(42*L/K)j.set(n+4,o+10,string.rep("━",bt))end;local function bu(bv,aq)as({"Failed to "..bv..":",aq..".","The installer will close."},T)end;local function bw()j.set(n+9,o+1,"WebWyse downloads the necessary")j.set(n+13,o+2,"files to your computer.")if ADDITIONAL then for a3,b1 in pairs(ADDITIONAL)do if b1.selected then for a3,bx in pairs(b1.files)do table.insert(FILES,bx)end end end end;K=#FILES end;local function by()for a3,bz in pairs(FILES)do O=c.name(bz.path)bo()local bA=bz.absolute and bz.path or c.concat(x,bz.path)if not c.exists(c.path(bA))then local bB,aJ=c.makeDirectory(c.path(bA))if not bB then bu("create directory",aJ)EXITNOTE=nil;ay()end end;local bC,aJ=io.open(bA,"w")if not bC then bu("create file",aJ)EXITNOTE=nil;ay()end;local aG,aH=pcall(k.request,bz.url)if not aG then bu("make internet request",aH)EXITNOTE=nil;ay()end;if not aH then bu("make internet request","invalid URL-address")EXITNOTE=nil;ay()end;local aI,aJ=aH.finishConnect()local aK=b.uptime()while aI==false do aI,aJ=aH.finishConnect()if b.uptime()>aK+40 then break end end;if aI==nil then bu("connect",aJ==bz.url and"can't get file"or aJ)EXITNOTE=nil;ay()end;local aL,aM,bD=aH.response()local aK=b.uptime()while aL==nil do aL,aM,bD=aH.response()if b.uptime()>aK+40 then break end end;if aL==nil then bu("connect","timeout expired")EXITNOTE=nil;ay()elseif aL~=200 then bu("connect","received code "..math.floor(aL).." ("..aM..")")EXITNOTE=nil;ay()end;if bD and bD["Content-Length"]then M=tonumber(bD["Content-Length"][1])else M=0 end;N=0;bo()while true do local aN,aJ=aH.read(math.huge)if aN then N=N+#aN;bC:write(aN)bo()else aH:close()if aJ then bu("get file",aJ)EXITNOTE=nil;ay()else bC:close()break end end end;L=L+1;bo()end end;local function bE()j.set(n+25-g(PRODUCTNAME)/2,o+4,PRODUCTNAME)j.set(n+10,o+5,"has been successfully installed")j.set(n+17,o+6,"on your computer.")j.set(n+9,o+9,"Click \"Ok\" to exit the installer.")Z(Q)j.set(n+39,o+14,"   Ok   ")end;local function bF()while true do local au,a3,av,aw,aR=e.pull()if au=="key_down"and av==13 or au=="touch"and aw==o+14 and av>=n+39 and av<=n+46 then return end end end;j.setBackground(U)j.fill(1,1,l,m,' ')am()q={aA}r={aB}if LICENSE or LICENSEURL then table.insert(q,aO)table.insert(r,aQ)end;if MINREQ and(MINREQ.CPU or MINREQ.VIDEO or MINREQ.RAM or MINREQ.COMPONENTS)then table.insert(q,a_)table.insert(r,b5)end;if ADDITIONAL and#ADDITIONAL>0 then table.insert(q,ba)table.insert(r,bb)end;table.insert(q,bj)table.insert(r,bl)table.insert(q,bm)table.insert(r,bn)table.insert(q,bw)table.insert(r,by)table.insert(q,bE)table.insert(r,bF)while p<=#q do al()q[p]()r[p]()p=p+1 end;ay()
