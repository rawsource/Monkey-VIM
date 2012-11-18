" File: monkey.vim
" Language: Monkey
" Maintainer: minke
" Last Change: 1-Nov-2012
" Description:
"   Capitalizes Monkey keywords when not typed in comments or strings.
"   To undo capitalization, press ^Xu.
"   Also supplies basic CTags/Tagbar support

" Tagbar definition for Monkey
let g:tagbar_type_monkey = {
    \ 'ctagstype' : 'monkey',
    \ 'kinds'        : [
        \'c:classes',
        \'f:fields',
        \'m:methods'
    \],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'c' : 'Class'
    \ },
    \ 'scope2kind' : {
        \ 'Class' : 'c'
    \ },
    \ 'deffile' : expand('<sfile>:p:h:h') . '/ctags/monkey.cnf'
\}


" Mostly copied from SQL iabr plugin

if exists("b:did_monkey_iabbr")
  finish
endif
let b:did_monkey_iabbr = 1

" Map keywords {{{
inoreabbr <silent> <buffer> void  <C-R>=MonkeyIab_ReplaceConditionally('void', 'Void')<CR>
inoreabbr <silent> <buffer> strict  <C-R>=MonkeyIab_ReplaceConditionally('strict', 'Strict')<CR>
inoreabbr <silent> <buffer> public  <C-R>=MonkeyIab_ReplaceConditionally('public', 'Public')<CR>
inoreabbr <silent> <buffer> private  <C-R>=MonkeyIab_ReplaceConditionally('private', 'Private')<CR>
inoreabbr <silent> <buffer> propery  <C-R>=MonkeyIab_ReplaceConditionally('propery', 'Propery')<CR>
inoreabbr <silent> <buffer> bool  <C-R>=MonkeyIab_ReplaceConditionally('bool', 'Bool')<CR>
inoreabbr <silent> <buffer> int  <C-R>=MonkeyIab_ReplaceConditionally('int', 'Int')<CR>
inoreabbr <silent> <buffer> float  <C-R>=MonkeyIab_ReplaceConditionally('float', 'Float')<CR>
inoreabbr <silent> <buffer> string  <C-R>=MonkeyIab_ReplaceConditionally('string', 'String')<CR>
inoreabbr <silent> <buffer> array  <C-R>=MonkeyIab_ReplaceConditionally('array', 'Array')<CR>
inoreabbr <silent> <buffer> object  <C-R>=MonkeyIab_ReplaceConditionally('object', 'Object')<CR>
inoreabbr <silent> <buffer> mod  <C-R>=MonkeyIab_ReplaceConditionally('mod', 'Mod')<CR>
inoreabbr <silent> <buffer> continue  <C-R>=MonkeyIab_ReplaceConditionally('continue', 'Continue')<CR>
inoreabbr <silent> <buffer> exit  <C-R>=MonkeyIab_ReplaceConditionally('exit', 'Exit')<CR>
inoreabbr <silent> <buffer> include  <C-R>=MonkeyIab_ReplaceConditionally('include', 'Include')<CR>
inoreabbr <silent> <buffer> import  <C-R>=MonkeyIab_ReplaceConditionally('import', 'Import')<CR>
inoreabbr <silent> <buffer> extern  <C-R>=MonkeyIab_ReplaceConditionally('extern', 'Extern')<CR>
inoreabbr <silent> <buffer> new  <C-R>=MonkeyIab_ReplaceConditionally('new', 'New')<CR>
inoreabbr <silent> <buffer> self  <C-R>=MonkeyIab_ReplaceConditionally('self', 'Self')<CR>
inoreabbr <silent> <buffer> null  <C-R>=MonkeyIab_ReplaceConditionally('null', 'Null')<CR>
inoreabbr <silent> <buffer> super  <C-R>=MonkeyIab_ReplaceConditionally('super', 'Super')<CR>
inoreabbr <silent> <buffer> eachin  <C-R>=MonkeyIab_ReplaceConditionally('eachin', 'EachIn')<CR>
inoreabbr <silent> <buffer> true  <C-R>=MonkeyIab_ReplaceConditionally('true', 'True')<CR>
inoreabbr <silent> <buffer> false  <C-R>=MonkeyIab_ReplaceConditionally('false', 'False')<CR>
inoreabbr <silent> <buffer> not  <C-R>=MonkeyIab_ReplaceConditionally('not', 'Not')<CR>
inoreabbr <silent> <buffer> extends  <C-R>=MonkeyIab_ReplaceConditionally('extends', 'Extends')<CR>
inoreabbr <silent> <buffer> abstract  <C-R>=MonkeyIab_ReplaceConditionally('abstract', 'Abstract')<CR>
inoreabbr <silent> <buffer> select  <C-R>=MonkeyIab_ReplaceConditionally('select', 'Select')<CR>
inoreabbr <silent> <buffer> case  <C-R>=MonkeyIab_ReplaceConditionally('case', 'Case')<CR>
inoreabbr <silent> <buffer> default  <C-R>=MonkeyIab_ReplaceConditionally('default', 'Default')<CR>
inoreabbr <silent> <buffer> const  <C-R>=MonkeyIab_ReplaceConditionally('const', 'Const')<CR>
inoreabbr <silent> <buffer> local  <C-R>=MonkeyIab_ReplaceConditionally('local', 'Local')<CR>
inoreabbr <silent> <buffer> global  <C-R>=MonkeyIab_ReplaceConditionally('global', 'Global')<CR>
inoreabbr <silent> <buffer> field  <C-R>=MonkeyIab_ReplaceConditionally('field', 'Field')<CR>
inoreabbr <silent> <buffer> method  <C-R>=MonkeyIab_ReplaceConditionally('method', 'Method')<CR>
inoreabbr <silent> <buffer> function  <C-R>=MonkeyIab_ReplaceConditionally('function', 'Function')<CR>
inoreabbr <silent> <buffer> class  <C-R>=MonkeyIab_ReplaceConditionally('class', 'Class')<CR>
inoreabbr <silent> <buffer> and  <C-R>=MonkeyIab_ReplaceConditionally('and', 'And')<CR>
inoreabbr <silent> <buffer> or  <C-R>=MonkeyIab_ReplaceConditionally('or', 'Or')<CR>
inoreabbr <silent> <buffer> shl  <C-R>=MonkeyIab_ReplaceConditionally('shl', 'Shl')<CR>
inoreabbr <silent> <buffer> shr  <C-R>=MonkeyIab_ReplaceConditionally('shr', 'Shr')<CR>
inoreabbr <silent> <buffer> end  <C-R>=MonkeyIab_ReplaceConditionally('end', 'End')<CR>
inoreabbr <silent> <buffer> if  <C-R>=MonkeyIab_ReplaceConditionally('if', 'If')<CR>
inoreabbr <silent> <buffer> then  <C-R>=MonkeyIab_ReplaceConditionally('then', 'Then')<CR>
inoreabbr <silent> <buffer> else  <C-R>=MonkeyIab_ReplaceConditionally('else', 'Else')<CR>
inoreabbr <silent> <buffer> elseif  <C-R>=MonkeyIab_ReplaceConditionally('elseif', 'ElseIf')<CR>
inoreabbr <silent> <buffer> endif  <C-R>=MonkeyIab_ReplaceConditionally('endif', 'EndIf')<CR>
inoreabbr <silent> <buffer> while  <C-R>=MonkeyIab_ReplaceConditionally('while', 'While')<CR>
inoreabbr <silent> <buffer> wend  <C-R>=MonkeyIab_ReplaceConditionally('wend', 'Wend')<CR>
inoreabbr <silent> <buffer> repeat  <C-R>=MonkeyIab_ReplaceConditionally('repeat', 'Repeat')<CR>
inoreabbr <silent> <buffer> until  <C-R>=MonkeyIab_ReplaceConditionally('until', 'Until')<CR>
inoreabbr <silent> <buffer> forever  <C-R>=MonkeyIab_ReplaceConditionally('forever', 'Forever')<CR>
inoreabbr <silent> <buffer> for  <C-R>=MonkeyIab_ReplaceConditionally('for', 'For')<CR>
inoreabbr <silent> <buffer> to  <C-R>=MonkeyIab_ReplaceConditionally('to', 'To')<CR>
inoreabbr <silent> <buffer> step  <C-R>=MonkeyIab_ReplaceConditionally('step', 'Step')<CR>
inoreabbr <silent> <buffer> next  <C-R>=MonkeyIab_ReplaceConditionally('next', 'Next')<CR>
inoreabbr <silent> <buffer> return  <C-R>=MonkeyIab_ReplaceConditionally('return', 'Return')<CR>
inoreabbr <silent> <buffer> module  <C-R>=MonkeyIab_ReplaceConditionally('module', 'Module')<CR>
inoreabbr <silent> <buffer> interface  <C-R>=MonkeyIab_ReplaceConditionally('interface', 'Interface')<CR>
inoreabbr <silent> <buffer> implements  <C-R>=MonkeyIab_ReplaceConditionally('implements', 'Implements')<CR>
inoreabbr <silent> <buffer> inline  <C-R>=MonkeyIab_ReplaceConditionally('inline', 'Inline')<CR>
inoreabbr <silent> <buffer> array  <C-R>=MonkeyIab_ReplaceConditionally('array', 'Array')<CR>
inoreabbr <silent> <buffer> loadstate  <C-R>=MonkeyIab_ReplaceConditionally('loadstate', 'LoadState')<CR>
inoreabbr <silent> <buffer> loadstring  <C-R>=MonkeyIab_ReplaceConditionally('loadstring', 'LoadString')<CR>
inoreabbr <silent> <buffer> millisecs  <C-R>=MonkeyIab_ReplaceConditionally('millisecs', 'Millisecs')<CR>
inoreabbr <silent> <buffer> savestate  <C-R>=MonkeyIab_ReplaceConditionally('savestate', 'SaveState')<CR>
inoreabbr <silent> <buffer> setupdaterate  <C-R>=MonkeyIab_ReplaceConditionally('setupdaterate', 'SetUpdateRate')<CR>
inoreabbr <silent> <buffer> updaterate  <C-R>=MonkeyIab_ReplaceConditionally('updaterate', 'UpdateRate')<CR>
inoreabbr <silent> <buffer> oncreate  <C-R>=MonkeyIab_ReplaceConditionally('oncreate', 'OnCreate')<CR>
inoreabbr <silent> <buffer> onloading  <C-R>=MonkeyIab_ReplaceConditionally('onloading', 'OnLoading')<CR>
inoreabbr <silent> <buffer> onrender  <C-R>=MonkeyIab_ReplaceConditionally('onrender', 'OnRender')<CR>
inoreabbr <silent> <buffer> onresume  <C-R>=MonkeyIab_ReplaceConditionally('onresume', 'OnResume')<CR>
inoreabbr <silent> <buffer> onsuspend  <C-R>=MonkeyIab_ReplaceConditionally('onsuspend', 'OnSuspend')<CR>
inoreabbr <silent> <buffer> onupdate  <C-R>=MonkeyIab_ReplaceConditionally('onupdate', 'OnUpdate')<CR>
inoreabbr <silent> <buffer> cls  <C-R>=MonkeyIab_ReplaceConditionally('cls', 'Cls')<CR>
inoreabbr <silent> <buffer> deviceheight  <C-R>=MonkeyIab_ReplaceConditionally('deviceheight', 'DeviceHeight')<CR>
inoreabbr <silent> <buffer> devicewidth  <C-R>=MonkeyIab_ReplaceConditionally('devicewidth', 'DeviceWidth')<CR>
inoreabbr <silent> <buffer> drawcircle  <C-R>=MonkeyIab_ReplaceConditionally('drawcircle', 'DrawCircle')<CR>
inoreabbr <silent> <buffer> drawellipse  <C-R>=MonkeyIab_ReplaceConditionally('drawellipse', 'DrawEllipse')<CR>
inoreabbr <silent> <buffer> drawimage  <C-R>=MonkeyIab_ReplaceConditionally('drawimage', 'DrawImage')<CR>
inoreabbr <silent> <buffer> drawimagerect  <C-R>=MonkeyIab_ReplaceConditionally('drawimagerect', 'DrawImageRect')<CR>
inoreabbr <silent> <buffer> drawline  <C-R>=MonkeyIab_ReplaceConditionally('drawline', 'DrawLine')<CR>
inoreabbr <silent> <buffer> drawoval  <C-R>=MonkeyIab_ReplaceConditionally('drawoval', 'DrawOval')<CR>
inoreabbr <silent> <buffer> drawrect  <C-R>=MonkeyIab_ReplaceConditionally('drawrect', 'DrawRect')<CR>
inoreabbr <silent> <buffer> drawtext  <C-R>=MonkeyIab_ReplaceConditionally('drawtext', 'DrawText')<CR>
inoreabbr <silent> <buffer> getalpha  <C-R>=MonkeyIab_ReplaceConditionally('getalpha', 'GetAlpha')<CR>
inoreabbr <silent> <buffer> getblend  <C-R>=MonkeyIab_ReplaceConditionally('getblend', 'GetBlend')<CR>
inoreabbr <silent> <buffer> getcolor  <C-R>=MonkeyIab_ReplaceConditionally('getcolor', 'GetColor')<CR>
inoreabbr <silent> <buffer> getfont  <C-R>=MonkeyIab_ReplaceConditionally('getfont', 'GetFont')<CR>
inoreabbr <silent> <buffer> getmatrix  <C-R>=MonkeyIab_ReplaceConditionally('getmatrix', 'GetMatrix')<CR>
inoreabbr <silent> <buffer> getscissor  <C-R>=MonkeyIab_ReplaceConditionally('getscissor', 'GetScissor')<CR>
inoreabbr <silent> <buffer> loadimage  <C-R>=MonkeyIab_ReplaceConditionally('loadimage', 'LoadImage')<CR>
inoreabbr <silent> <buffer> popmatrix  <C-R>=MonkeyIab_ReplaceConditionally('popmatrix', 'PopMatrix')<CR>
inoreabbr <silent> <buffer> pushmatrix  <C-R>=MonkeyIab_ReplaceConditionally('pushmatrix', 'PushMatrix')<CR>
inoreabbr <silent> <buffer> rotate  <C-R>=MonkeyIab_ReplaceConditionally('rotate', 'Rotate')<CR>
inoreabbr <silent> <buffer> scale  <C-R>=MonkeyIab_ReplaceConditionally('scale', 'Scale')<CR>
inoreabbr <silent> <buffer> setalpha  <C-R>=MonkeyIab_ReplaceConditionally('setalpha', 'SetAlpha')<CR>
inoreabbr <silent> <buffer> setblend  <C-R>=MonkeyIab_ReplaceConditionally('setblend', 'SetBlend')<CR>
inoreabbr <silent> <buffer> setcolor  <C-R>=MonkeyIab_ReplaceConditionally('setcolor', 'SetColor')<CR>
inoreabbr <silent> <buffer> setfont  <C-R>=MonkeyIab_ReplaceConditionally('setfont', 'SetFont')<CR>
inoreabbr <silent> <buffer> setmatrix  <C-R>=MonkeyIab_ReplaceConditionally('setmatrix', 'SetMatrix')<CR>
inoreabbr <silent> <buffer> setscissor  <C-R>=MonkeyIab_ReplaceConditionally('setscissor', 'SetScissor')<CR>
inoreabbr <silent> <buffer> transform  <C-R>=MonkeyIab_ReplaceConditionally('transform', 'Transform')<CR>
inoreabbr <silent> <buffer> translate  <C-R>=MonkeyIab_ReplaceConditionally('translate', 'Translate')<CR>
inoreabbr <silent> <buffer> defaultflags  <C-R>=MonkeyIab_ReplaceConditionally('defaultflags', 'DefaultFlags')<CR>
inoreabbr <silent> <buffer> discard  <C-R>=MonkeyIab_ReplaceConditionally('discard', 'Discard')<CR>
inoreabbr <silent> <buffer> frames  <C-R>=MonkeyIab_ReplaceConditionally('frames', 'Frames')<CR>
inoreabbr <silent> <buffer> grabimage  <C-R>=MonkeyIab_ReplaceConditionally('grabimage', 'GrabImage')<CR>
inoreabbr <silent> <buffer> handlex  <C-R>=MonkeyIab_ReplaceConditionally('handlex', 'HandleX')<CR>
inoreabbr <silent> <buffer> handley  <C-R>=MonkeyIab_ReplaceConditionally('handley', 'HandleY')<CR>
inoreabbr <silent> <buffer> height  <C-R>=MonkeyIab_ReplaceConditionally('height', 'Height')<CR>
inoreabbr <silent> <buffer> sethandle  <C-R>=MonkeyIab_ReplaceConditionally('sethandle', 'SetHandle')<CR>
inoreabbr <silent> <buffer> width  <C-R>=MonkeyIab_ReplaceConditionally('width', 'Width')<CR>
inoreabbr <silent> <buffer> oncreate  <C-R>=MonkeyIab_ReplaceConditionally('oncreate', 'OnCreate')<CR>
inoreabbr <silent> <buffer> onloading  <C-R>=MonkeyIab_ReplaceConditionally('onloading', 'OnLoading')<CR>
inoreabbr <silent> <buffer> onrender  <C-R>=MonkeyIab_ReplaceConditionally('onrender', 'OnRender')<CR>
inoreabbr <silent> <buffer> onresume  <C-R>=MonkeyIab_ReplaceConditionally('onresume', 'OnResume')<CR>
inoreabbr <silent> <buffer> onsuspend  <C-R>=MonkeyIab_ReplaceConditionally('onsuspend', 'OnSuspend')<CR>
inoreabbr <silent> <buffer> onupdate  <C-R>=MonkeyIab_ReplaceConditionally('onupdate', 'OnUpdate')<CR>
inoreabbr <silent> <buffer> error  <C-R>=MonkeyIab_ReplaceConditionally('error', 'Error')<CR>
inoreabbr <silent> <buffer> print  <C-R>=MonkeyIab_ReplaceConditionally('print', 'Print')<CR>
inoreabbr <silent> <buffer> length  <C-R>=MonkeyIab_ReplaceConditionally('length', 'Length')<CR>
inoreabbr <silent> <buffer> resize  <C-R>=MonkeyIab_ReplaceConditionally('resize', 'Resize')<CR>
inoreabbr <silent> <buffer> compare  <C-R>=MonkeyIab_ReplaceConditionally('compare', 'Compare')<CR>
inoreabbr <silent> <buffer> endswith  <C-R>=MonkeyIab_ReplaceConditionally('endswith', 'EndsWith')<CR>
inoreabbr <silent> <buffer> find  <C-R>=MonkeyIab_ReplaceConditionally('find', 'Find')<CR>
inoreabbr <silent> <buffer> findlast  <C-R>=MonkeyIab_ReplaceConditionally('findlast', 'FindLast')<CR>
inoreabbr <silent> <buffer> fromchar  <C-R>=MonkeyIab_ReplaceConditionally('fromchar', 'FromChar')<CR>
inoreabbr <silent> <buffer> join  <C-R>=MonkeyIab_ReplaceConditionally('join', 'Join')<CR>
inoreabbr <silent> <buffer> length  <C-R>=MonkeyIab_ReplaceConditionally('length', 'Length')<CR>
inoreabbr <silent> <buffer> replace  <C-R>=MonkeyIab_ReplaceConditionally('replace', 'Replace')<CR>
inoreabbr <silent> <buffer> split  <C-R>=MonkeyIab_ReplaceConditionally('split', 'Split')<CR>
inoreabbr <silent> <buffer> startswith  <C-R>=MonkeyIab_ReplaceConditionally('startswith', 'StartsWith')<CR>
inoreabbr <silent> <buffer> tolower  <C-R>=MonkeyIab_ReplaceConditionally('tolower', 'ToLower')<CR>
inoreabbr <silent> <buffer> toupper  <C-R>=MonkeyIab_ReplaceConditionally('toupper', 'ToUpper')<CR>
inoreabbr <silent> <buffer> trim  <C-R>=MonkeyIab_ReplaceConditionally('trim', 'Trim')<CR>
inoreabbr <silent> <buffer> acos  <C-R>=MonkeyIab_ReplaceConditionally('acos', 'ACos')<CR>
inoreabbr <silent> <buffer> asin  <C-R>=MonkeyIab_ReplaceConditionally('asin', 'ASin')<CR>
inoreabbr <silent> <buffer> atan  <C-R>=MonkeyIab_ReplaceConditionally('atan', 'ATan')<CR>
inoreabbr <silent> <buffer> atan2  <C-R>=MonkeyIab_ReplaceConditionally('atan2', 'ATan2')<CR>
inoreabbr <silent> <buffer> abs  <C-R>=MonkeyIab_ReplaceConditionally('abs', 'Abs')<CR>
inoreabbr <silent> <buffer> ceil  <C-R>=MonkeyIab_ReplaceConditionally('ceil', 'Ceil')<CR>
inoreabbr <silent> <buffer> clamp  <C-R>=MonkeyIab_ReplaceConditionally('clamp', 'Clamp')<CR>
inoreabbr <silent> <buffer> cos  <C-R>=MonkeyIab_ReplaceConditionally('cos', 'Cos')<CR>
inoreabbr <silent> <buffer> floor  <C-R>=MonkeyIab_ReplaceConditionally('floor', 'Floor')<CR>
inoreabbr <silent> <buffer> log  <C-R>=MonkeyIab_ReplaceConditionally('log', 'Log')<CR>
inoreabbr <silent> <buffer> max  <C-R>=MonkeyIab_ReplaceConditionally('max', 'Max')<CR>
inoreabbr <silent> <buffer> min  <C-R>=MonkeyIab_ReplaceConditionally('min', 'Min')<CR>
inoreabbr <silent> <buffer> pow  <C-R>=MonkeyIab_ReplaceConditionally('pow', 'Pow')<CR>
inoreabbr <silent> <buffer> sgn  <C-R>=MonkeyIab_ReplaceConditionally('sgn', 'Sgn')<CR>
inoreabbr <silent> <buffer> sin  <C-R>=MonkeyIab_ReplaceConditionally('sin', 'Sin')<CR>
inoreabbr <silent> <buffer> sqrt  <C-R>=MonkeyIab_ReplaceConditionally('sqrt', 'Sqrt')<CR>
inoreabbr <silent> <buffer> tan  <C-R>=MonkeyIab_ReplaceConditionally('tan', 'Tan')<CR>
inoreabbr <silent> <buffer> seed  <C-R>=MonkeyIab_ReplaceConditionally('seed', 'Seed')<CR>
inoreabbr <silent> <buffer> rnd  <C-R>=MonkeyIab_ReplaceConditionally('rnd', 'Rnd')<CR>
"}}}

function! MonkeyIab_ReplaceConditionally(original, replacement)
  " only replace outside of comments or strings (which map to constant)
  let elesyn = synIDtrans(synID(line("."), col(".") - 1, 0))
  if elesyn != hlID('Comment') && elesyn != hlID('Constant')
    let word = a:replacement
  else
    let word = a:original
  endif

  let g:UndoBuffer = a:original
  return word
endfunction

inoremap <buffer> <C-X>u <C-W><C-R>=g:UndoBuffer<CR><C-V><Space>
