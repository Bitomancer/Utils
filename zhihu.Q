[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=9343dc9c-59d5-46fb-98a6-bc17a04ea42e
Description=zhihu
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
path = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
If Plugin.chrome.launch(path, "--window-size=800,600||--proxy-server=socks5://127.0.0.1:8090||--user-data-dir=D:\Data\Chrome_01") = False Then 
    TracePrint "launch failed"
    ExitScript
End If

id = Plugin.chrome.get_ids()
If id = "" Then 
        TracePrint "launch failed"
        ExitScript
End If

Call Plugin.chrome.load(id, "https://www.zhihu.com")

Do
    Delay 1000
Loop While Plugin.chrome.is_loading(id)


Hwnd = Split(Plugin.Window.Search("֪��"), "|")(0)
TracePrint Hwnd

RandomId = CInt(Rnd() * 10000) + 1
Fullname = "aof12ashdfdfg" & CStr(RandomId)
TracePrint Fullname

// Captcha
Call Plugin.Console.Open()
Call Plugin.Console.WriteLine("Captcha:" & vbclrf)
Captcha = Plugin.Console.ReadLine()
TracePrint Captcha
Call Plugin.Console.Close()


// record
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 107)
Delay 739
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 108)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 109)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 110)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 111)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 112)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 113)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 114)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 197, 115)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 198, 115)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 198, 116)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 199, 116)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 199, 117)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 199, 118)
Delay 20
Call Plugin.Bkgnd.MoveTo(Hwnd, 200, 118)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 200, 119)
Delay 48
Call Plugin.Bkgnd.MoveTo(Hwnd, 201, 120)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 202, 120)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 203, 120)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 204, 121)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 205, 121)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 206, 122)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 207, 122)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 208, 122)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 209, 122)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 210, 123)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 211, 124)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 213, 124)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 214, 125)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 215, 125)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 216, 125)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 217, 126)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 218, 126)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 219, 127)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 220, 128)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 221, 128)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 222, 128)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 223, 129)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 223, 130)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 225, 131)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 226, 131)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 226, 132)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 227, 132)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 229, 133)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 230, 134)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 230, 135)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 231, 135)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 232, 136)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 232, 137)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 233, 138)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 234, 138)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 235, 139)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 236, 140)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 236, 141)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 237, 142)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 238, 143)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 239, 144)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 240, 145)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 241, 146)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 242, 147)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 242, 148)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 243, 149)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 243, 151)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 244, 151)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 245, 152)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 246, 154)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 246, 155)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 247, 155)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 249, 157)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 249, 158)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 250, 159)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 251, 159)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 252, 160)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 253, 162)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 254, 163)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 254, 164)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 255, 165)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 256, 167)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 257, 168)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 258, 169)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 259, 170)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 259, 171)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 260, 172)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 261, 173)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 263, 174)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 264, 176)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 265, 177)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 266, 178)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 267, 179)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 268, 180)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 269, 181)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 270, 182)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 271, 183)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 272, 184)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 273, 186)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 274, 187)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 275, 187)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 276, 188)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 277, 189)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 278, 190)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 279, 192)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 280, 193)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 280, 194)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 281, 195)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 282, 196)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 283, 196)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 284, 198)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 285, 199)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 286, 200)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 286, 201)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 287, 202)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 288, 204)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 289, 204)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 289, 205)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 290, 207)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 291, 208)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 291, 209)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 292, 210)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 293, 211)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 293, 212)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 294, 213)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 294, 215)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 295, 216)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 296, 217)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 297, 218)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 297, 219)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 298, 221)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 299, 222)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 299, 224)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 300, 224)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 300, 226)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 301, 227)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 301, 229)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 302, 230)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 302, 231)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 302, 232)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 302, 233)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 234)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 235)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 304, 237)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 238)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 240)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 241)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 242)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 243)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 244)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 245)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 309, 246)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 309, 247)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 247)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 248)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 249)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 250)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 251)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 252)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 253)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 254)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 255)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 256)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 257)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 258)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 259)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 260)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 260)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 261)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 262)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 263)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 264)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 265)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 266)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 267)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 268)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 269)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 270)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 271)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 272)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 273)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 273)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 274)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 275)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 276)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 277)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 278)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 279)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 280)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 281)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 283)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 284)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 285)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 286)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 287)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 288)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 289)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 290)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 291)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 292)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 293)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 294)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 321, 294)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 321, 295)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 321, 296)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 296)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 297)
Delay 147
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 298)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 299)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 299)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 300)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 301)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 302)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 303)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 325, 303)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 325, 304)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 304)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 305)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 306)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 306)
Delay 19
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 306)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 307)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 307)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 308)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 309)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 310)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 310)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 311)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 312)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 312)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 313)
Delay 202
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 312)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 311)
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 311)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 310)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 310)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 309)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 308)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 308)
Delay 172
Call Plugin.Bkgnd.LeftDown(Hwnd, 335, 308)
Delay 1
Call Plugin.Bkgnd.LeftClick(Hwnd, 335, 308)
Delay 1
Call Plugin.Bkgnd.LeftUp(Hwnd, 335, 308)
Delay 1078
Call Plugin.Bkgnd.SendString(Hwnd, "asdasda001123")
Call Plugin.Bkgnd.KeyPress(Hwnd, 65)
Delay 577
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 309)
Delay 18
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 310)
Delay 24
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 310)
Delay 35
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 311)
Delay 25
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 312)
Delay 13
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 313)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 314)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 315)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 316)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 317)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 318)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 319)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 320)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 321)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 322)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 323)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 324)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 325)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 326)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 327)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 328)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 329)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 330)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 331)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 331)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 332)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 333)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 334)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 335)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 336)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 337)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 338)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 339)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 340)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 341)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 342)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 343)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 344)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 345)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 346)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 346)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 347)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 348)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 349)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 350)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 351)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 352)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 353)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 353)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 354)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 355)
Delay 448
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 355)
Delay 20
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 356)
Delay 13
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 356)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 357)
Delay 17
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 357)
Delay 17
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 358)
Delay 26
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 359)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 359)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 360)
Delay 18
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 361)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 362)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 363)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 364)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 365)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 366)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 367)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 368)
Delay 104
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 368)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 367)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 366)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 366)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 365)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 365)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 364)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 363)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 363)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 362)
Delay 18
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 361)
Delay 15
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 360)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 359)
Delay 32
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 358)
Delay 47
Call Plugin.Bkgnd.LeftDown(Hwnd, 339, 358)
Delay 1
Call Plugin.Bkgnd.LeftClick(Hwnd, 339, 358)
Delay 777
Call Plugin.Bkgnd.SendString(Hwnd, "asdasda001121233@qq.com")
Delay 2056
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 358)
Delay 1155
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 359)
Delay 32
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 360)
Delay 17
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 361)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 362)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 363)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 364)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 365)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 366)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 367)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 368)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 369)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 370)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 371)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 372)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 372)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 373)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 374)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 375)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 376)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 377)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 378)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 379)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 380)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 381)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 382)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 383)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 384)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 385)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 386)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 386)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 387)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 388)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 389)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 389)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 390)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 391)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 392)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 393)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 394)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 395)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 396)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 397)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 397)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 398)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 399)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 400)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 401)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 401)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 402)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 403)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 404)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 404)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 405)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 406)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 407)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 408)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 408)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 409)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 410)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 411)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 412)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 412)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 413)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 414)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 415)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 416)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 416)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 417)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 418)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 419)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 420)
Delay 98
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 419)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 418)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 418)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 417)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 417)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 416)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 415)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 414)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 413)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 412)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 411)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 411)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 410)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 409)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 408)
Delay 435
Call Plugin.Bkgnd.LeftClick(Hwnd, 334, 408)
Delay 1
Call Plugin.Bkgnd.LeftUp(Hwnd, 334, 408)
Delay 3067
Call Plugin.Bkgnd.SendString(Hwnd, "111111")
Delay 666
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 409)
Delay 44
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 410)
Delay 106
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 411)
Delay 820
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 411)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 412)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 413)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 413)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 414)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 414)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 415)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 415)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 416)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 417)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 418)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 418)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 419)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 420)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 421)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 325, 421)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 422)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 423)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 423)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 424)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 425)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 426)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 426)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 427)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 428)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 429)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 430)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 431)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 432)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 432)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 433)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 433)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 434)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 435)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 435)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 436)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 436)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 437)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 437)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 438)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 439)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 439)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 440)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 440)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 441)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 309, 442)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 443)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 444)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 444)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 445)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 446)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 447)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 447)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 448)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 304, 448)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 304, 449)
Delay 15
Call Plugin.Bkgnd.MoveTo(Hwnd, 304, 450)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 450)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 451)
Delay 113
Call Plugin.Bkgnd.LeftClick(Hwnd, 303, 451)
Delay 1
Call Plugin.Bkgnd.LeftUp(Hwnd, 303, 451)
Delay 768
Call Plugin.Bkgnd.SendString(Hwnd, Captcha)
Delay 1024
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 452)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 453)
Delay 18
Call Plugin.Bkgnd.MoveTo(Hwnd, 303, 454)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 304, 454)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 454)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 455)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 305, 456)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 456)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 306, 457)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 458)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 459)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 307, 460)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 460)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 461)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 308, 462)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 309, 462)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 309, 463)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 463)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 310, 464)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 465)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 311, 466)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 466)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 467)
Delay 12
Call Plugin.Bkgnd.MoveTo(Hwnd, 312, 468)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 468)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 469)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 313, 470)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 470)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 471)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 314, 472)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 473)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 315, 474)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 474)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 316, 475)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 476)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 477)
Delay 3
Call Plugin.Bkgnd.MoveTo(Hwnd, 317, 478)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 478)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 318, 479)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 479)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 319, 480)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 481)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 482)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 320, 483)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 321, 484)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 321, 485)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 486)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 322, 487)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 488)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 323, 489)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 490)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 324, 491)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 325, 492)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 325, 493)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 493)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 494)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 495)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 496)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 326, 497)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 497)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 498)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 499)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 500)
Delay 14
Call Plugin.Bkgnd.MoveTo(Hwnd, 327, 501)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 501)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 502)
Delay 16
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 503)
Delay 26
Call Plugin.Bkgnd.MoveTo(Hwnd, 328, 504)
Delay 37
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 504)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 329, 505)
Delay 106
Call Plugin.Bkgnd.MoveTo(Hwnd, 330, 505)
Delay 19
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 505)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 331, 506)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 332, 506)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 333, 506)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 334, 506)
Delay 4
Call Plugin.Bkgnd.MoveTo(Hwnd, 335, 506)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 336, 506)
Delay 5
Call Plugin.Bkgnd.MoveTo(Hwnd, 337, 506)
Delay 9
Call Plugin.Bkgnd.MoveTo(Hwnd, 338, 506)
Delay 1
Call Plugin.Bkgnd.MoveTo(Hwnd, 339, 506)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 340, 506)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 341, 506)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 342, 506)
Delay 2
Call Plugin.Bkgnd.MoveTo(Hwnd, 343, 506)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 344, 507)
Delay 6
Call Plugin.Bkgnd.MoveTo(Hwnd, 345, 507)
Delay 8
Call Plugin.Bkgnd.MoveTo(Hwnd, 346, 507)
Delay 10
Call Plugin.Bkgnd.MoveTo(Hwnd, 347, 507)
Delay 7
Call Plugin.Bkgnd.MoveTo(Hwnd, 348, 507)
Delay 13
Call Plugin.Bkgnd.MoveTo(Hwnd, 349, 508)
Delay 11
Call Plugin.Bkgnd.MoveTo(Hwnd, 350, 508)
Delay 537
Call Plugin.Bkgnd.LeftDown(Hwnd, 350, 508)
Call Plugin.Bkgnd.LeftClick(Hwnd, 350, 508)
Delay 1
Call Plugin.Bkgnd.LeftUp(Hwnd, 350, 508)
Delay 255
Call Plugin.Bkgnd.MoveTo(Hwnd, 350, 509)



//Call Plugin.chrome.quit()
