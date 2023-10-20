format PE console
include 'win32wxp.inc'

.code
  start:
        invoke  WriteConsole,<invoke GetStdHandle,STD_OUTPUT_HANDLE>,tex,12,dummy,0
        invoke  ExitProcess,0
.end start

.data
tex     TCHAR   'Hello World!'
dummy   rd      1 
