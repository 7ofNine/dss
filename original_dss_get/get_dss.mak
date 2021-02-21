# Microsoft Developer Studio Generated NMAKE File, Based on get_dss.dsp
!IF "$(CFG)" == ""
CFG=get_dss - Win32 Release
!MESSAGE No configuration specified. Defaulting to get_dss - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "get_dss - Win32 Release" && "$(CFG)" != "get_dss - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "get_dss.mak" CFG="get_dss - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "get_dss - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "get_dss - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "get_dss - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release

ALL : "..\Release\get_dss.exe"


CLEAN :
	-@erase "$(INTDIR)\bitinput.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\dodecode.obj"
	-@erase "$(INTDIR)\dss.obj"
	-@erase "$(INTDIR)\extr_fit.obj"
	-@erase "$(INTDIR)\get_dss.obj"
	-@erase "$(INTDIR)\getpiece.obj"
	-@erase "$(INTDIR)\hdcmprss.obj"
	-@erase "$(INTDIR)\hinv.obj"
	-@erase "$(INTDIR)\platelst.obj"
	-@erase "$(INTDIR)\qtreedec.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "..\Release\get_dss.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Zp1 /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "FIX_3DIGIT_EXPS" /Fp"$(INTDIR)\get_dss.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\get_dss.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\get_dss.pdb" /machine:I386 /out:"../Release/get_dss.exe" 
LINK32_OBJS= \
	"$(INTDIR)\bitinput.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\dodecode.obj" \
	"$(INTDIR)\dss.obj" \
	"$(INTDIR)\get_dss.obj" \
	"$(INTDIR)\getpiece.obj" \
	"$(INTDIR)\hdcmprss.obj" \
	"$(INTDIR)\hinv.obj" \
	"$(INTDIR)\platelst.obj" \
	"$(INTDIR)\qtreedec.obj" \
	"$(INTDIR)\extr_fit.obj"

"..\Release\get_dss.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "get_dss - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Debug\get_dss.exe"


CLEAN :
	-@erase "$(INTDIR)\bitinput.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\dodecode.obj"
	-@erase "$(INTDIR)\dss.obj"
	-@erase "$(INTDIR)\extr_fit.obj"
	-@erase "$(INTDIR)\get_dss.obj"
	-@erase "$(INTDIR)\getpiece.obj"
	-@erase "$(INTDIR)\hdcmprss.obj"
	-@erase "$(INTDIR)\hinv.obj"
	-@erase "$(INTDIR)\platelst.obj"
	-@erase "$(INTDIR)\qtreedec.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\get_dss.pdb"
	-@erase "..\Debug\get_dss.exe"
	-@erase "..\Debug\get_dss.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Zp1 /MLd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "FIX_3DIGIT_EXPS" /Fp"$(INTDIR)\get_dss.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\get_dss.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\get_dss.pdb" /debug /machine:I386 /out:"../Debug/get_dss.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\bitinput.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\dodecode.obj" \
	"$(INTDIR)\dss.obj" \
	"$(INTDIR)\get_dss.obj" \
	"$(INTDIR)\getpiece.obj" \
	"$(INTDIR)\hdcmprss.obj" \
	"$(INTDIR)\hinv.obj" \
	"$(INTDIR)\platelst.obj" \
	"$(INTDIR)\qtreedec.obj" \
	"$(INTDIR)\extr_fit.obj"

"..\Debug\get_dss.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("get_dss.dep")
!INCLUDE "get_dss.dep"
!ELSE 
!MESSAGE Warning: cannot find "get_dss.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "get_dss - Win32 Release" || "$(CFG)" == "get_dss - Win32 Debug"
SOURCE=..\..\get_dss\bitinput.cpp

"$(INTDIR)\bitinput.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\decode.cpp

"$(INTDIR)\decode.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\dodecode.cpp

"$(INTDIR)\dodecode.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\dss.cpp

"$(INTDIR)\dss.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\extr_fit.cpp

"$(INTDIR)\extr_fit.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\get_dss.cpp

"$(INTDIR)\get_dss.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\getpiece.cpp

"$(INTDIR)\getpiece.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\hdcmprss.cpp

"$(INTDIR)\hdcmprss.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\hinv.cpp

"$(INTDIR)\hinv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\platelst.cpp

"$(INTDIR)\platelst.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\get_dss\qtreedec.cpp

"$(INTDIR)\qtreedec.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

