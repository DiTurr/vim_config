" For version 5.x: Clear all syntax items
" For versions greater than 6.x: Quit when a syntax file was already loaded
if v:version < 600
    syntax clear
elseif exists('b:current_syntax')
    finish
endif


"
" Function calls
"
syn match  pythonFunctionDefinition "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*"
syn region pythonFunctionCall start='(' end=')' contains=pythonFunctionCall,pythonFunctionCallKeyword,pythonString,pythonConstant,pythonNumber,pythonComma,pythonBuiltin
syn match  pythonFunctionCallKeyword /\i*\ze\s*=[^=]/ contained


"
" Keywords
"
syn keyword pythonConstant	   False None True
syn keyword pythonStatement	   as assert break continue del exec global
syn keyword pythonStatement	   lambda nonlocal pass print return with yield
syn keyword pythonStatement	   def 
syn keyword pythonStatement    class 
syn keyword pythonConditional  elif else if
syn keyword pythonRepeat	   for while
syn keyword pythonOperator	   and in is not or
syn keyword pythonException	   except finally raise try
syn keyword pythonInclude	   from import
syn match   pythonComma        ","

"
" Comments
"
syn match   pythonComment       '#.*$' display contains=pythonTodo
syn keyword pythonTodo          TODO


"
" Strings
"
syn region pythonString        start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend 
syn region pythonString        start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend 
syn region pythonString        start=+'''+ skip=+\\'+ end=+'''+ keepend 
syn region pythonString        start=+"""+ skip=+\\"+ end=+"""+ keepend


"
" Numbers
"
syn match   pythonNumber      '\<\d\>' display
syn match   pythonNumber      '\<[1-9][_0-9]*\d\>' display
syn match   pythonNumber      '\<\d[jJ]\>' display
syn match   pythonNumber      '\<[1-9][_0-9]*\d[jJ]\>' display

    
"
" Builtin objects/functions
"
syn keyword pythonBuiltin	  abs all any bin bool chr classmethod
syn keyword pythonBuiltin	  compile complex delattr dict dir divmod
syn keyword pythonBuiltin	  enumerate eval filter float format
syn keyword pythonBuiltin	  frozenset getattr globals hasattr hash
syn keyword pythonBuiltin	  help hex id input int isinstance
syn keyword pythonBuiltin	  issubclass iter len list locals map max
syn keyword pythonBuiltin	  min next object oct open ord pow print
syn keyword pythonBuiltin	  property range repr reversed round set
syn keyword pythonBuiltin	  setattr slice sorted staticmethod str
syn keyword pythonBuiltin	  sum super tuple type vars zip __import__
syn keyword pythonBuiltin	  basestring callable cmp execfile file
syn keyword pythonBuiltin	  long raw_input reduce reload unichr
syn keyword pythonBuiltin	  unicode xrange
syn keyword pythonBuiltin	  ascii bytearray bytes exec memoryview
syn keyword pythonBuiltin	  apply buffer coerce intern


let b:current_syntax = 'python'
