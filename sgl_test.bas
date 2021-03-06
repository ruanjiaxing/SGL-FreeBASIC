#lang "fblite"

#include once "sgl.bi"

#inclib "SGL"

function WinMain (byval hInst as HINSTANCE, byval hPInst as HINSTANCE, byval cmdLine as PSTR, byval cmdShow as long) as long

   Dim as HWND panel, btn
   
   SGL_Init(hInst, NULL)

   panel = SGL_New(0, SGL_PANEL, 0, "SGL", -1, -1)

   btn   = SGL_New(panel, SGL_CTRL_BUTTON, 0, "Hello!", 0, 0)

   SGL_Layout(panel)

   SGL_VisibleSet(panel, 1)

   SGL_Run()

   SGL_Exit()
   
   return 0

end function

WinMain(GetModuleHandle(NULL), 0, "sgl_test", 0)
