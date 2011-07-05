" Vim syntax file
" Language: Monkey
" Maintainer: Tijmen Mulder <00.mulder@gmail.com>
" Last Change: July 4, 2011

" I just copy / pasted stuff from other syntax definitions.



if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif



syn keyword monkeySyntax Void Strict Public Private Propery Bool Int Float String Array Object Mod Continue Exit Include Import Extern New Self Null Super EachIn True False Not Extends Abstract Select Case Default Const Local Global Field Method Function Class And Or Shl Shr End If Then Else ElseIf EndIf While Wend Repeat Until Forever For To Step Next Return Module Interface Implements Inline Array
syn keyword monkeyPreprocessor #if #else #endif #print #error HOST LANG TARGET CONFIG

" mojo.app
syn keyword monkeyFunc LoadState LoadString Millisecs SaveState SetUpdateRate UpdateRate
syn keyword monkeyMeth OnCreate OnLoading OnRender OnResume OnSuspend OnUpdate

" mojo.audio
syn keyword monkeyFunc ChannelState LoadSound MusicState PlayMusic PlaySound SetChannelPan SetChannelRate SetChannelVolume SetMusicVolume StopChannel StopMusic
syn keyword monkeyMeth Discard

" mojo.graphics
syn keyword monkeyFunc Cls DeviceHeight DeviceWidth DrawCircle DrawEllipse DrawImage DrawImageRect DrawLine DrawOval DrawRect DrawText GetAlpha GetBlend GetColor GetFont GetMatrix GetScissor LoadImage PopMatrix PushMatrix Rotate Scale SetAlpha SetBlend SetColor SetFont SetMatrix SetScissor Transform Translate
syn keyword monkeyMeth DefaultFlags Discard Frames GrabImage HandleX HandleY Height SetHandle Width

" mojo.input
syn keyword monkeyFunc AccelX AccelY AccelZ GetChar JoyDown JoyHit KeyDown KeyHit MouseDown MouseHit MouseX MouseY TouchDown TouchHit TouchX TouchY

" monkey.lang
syn keyword monkeyFunc Error Print
syn keyword monkeyMeth Length Resize Compare EndsWith Find FindLast FromChar Join Length Replace Split StartsWith ToLower ToUpper Trim

" monkey.list
syn keyword monkeyFunc FloatList IntList List Node StringList
syn keyword monkeyMeth ToArray ToArray AddFirst AddLast Backwards Clear Count First IsEmpty Last ObjectEnumerator RemoveEach RemoveFirst RemoveLast Remove Value ToArray

" monkey.map
syn keyword monkeyFunc FloatMap IntMap Map Node StringMap
syn keyword monkeyMeth Clear Get IsEmpty Keys ObjectEnumerator Remove Set Values Key Value

" monkey.math
syn keyword monkeyFunc ACos ASin ATan ATan2 Abs Ceil Clamp Cos Floor Log Max Min Pow Sgn Sin Sqrt Tan
syn keyword monkeyConstant HALFPI PI TWOPI

" monkey.random
syn keyword monkeyFunc Seed Rnd

" monkey.set
syn keyword monkeyFunc FloatSet IntSet StringSet Set
syn keyword monkeyMeth Clear Count Insert IsEmpty ObjectEnumerator Remove

" monkey.stack
syn keyword monkeyFunc FloatStack IntStack Stack StringStack
syn keyword monkeyMeth ToArray ToArray Backwards Clear Get Insert IsEmpty Length ObjectEnumerator Pop Push Remove RemoveEach Set Top Join ToArray



syn match	monkeyTypeSpecifier "[<>+\*^/\\=-]"
"syn match	monkeyTypeSpecifier "-\|=\|[:<>+\*^/\\]\|AND\|OR"

syn match	monkeyNumber "\<\d\+\>"
syn match	monkeyNumber "\<\d\+\.\d*\>"
syn match	monkeyNumber "\.\d\+\>"

syn region	monkeyStruc matchgroup=Delimiter start="("	matchgroup=Delimiter end=")" contains=ALL
syn region	monkeyStruc matchgroup=Delimiter start="\["	matchgroup=Delimiter end="\]" contains=ALL

syn match	monkeySpecial contained "\\\d\d\d\|\\."
syn region	monkeyString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=monkeySpecial

syn region	monkeyComment start="#rem" end="#end"
syn region	monkeyComment start="^[ \t]*'" end="$"

syn match	monkeyTypeSpecifier "[a-zA-Z0-9][\$%&!#]"ms=s+1



if version >= 508 || !exists("did_monkey_syntax_inits")

  if version < 508
    let did_monkey_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink monkeySyntax			Statement
  HiLink monkeyFunc				Function
  HiLink monkeyString			String
  HiLink monkeyNumber			Number

  HiLink monkeyConstant			Constant

  HiLink monkeyMeth				Identifier

  HiLink monkeyComment			Comment
  HiLink monkeySpecial			Special
  HiLink monkeyPreprocessor		PreProc
  HiLink monkeyTypeSpecifier	Type
  
  delcommand HiLink
 
endif

let b:current_syntax = "monkey"

