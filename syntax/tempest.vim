" Vim syntax file for Tempest
" Inspired by the Breeze syntax file by Robin Morisset.
" Inspired by the Haskell syntax file by John Williams.
" (and others, look at haskell.vim)

" Remove any old syntax stuff hanging around
if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

" (Qualified) identifiers (no default highlighting)
syn match tsConId "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=\<[A-Z][a-zA-Z0-9_']*\>"
syn match tsVarId "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=\<[a-z][a-zA-Z0-9_']*\>"

" Infix operators--most punctuation characters and any (qualified) identifier
" enclosed in `backquotes`. An operator starting with : is a constructor,
" others are variables (e.g. functions).
syn match tsVarSym "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[-!#$%&\*\+/<=>\?@\\^|~.][-!#$%&\*\+/<=>\?@\\^|~:.]*"
syn match tsConSym "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=:[-!#$%&\*\+./<=>\?@\\^|~:]*"
syn match tsVarSym "`\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[a-z][a-zA-Z0-9_']*`"
syn match tsConSym "`\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[A-Z][a-zA-Z0-9_']*`"

" Reserved symbols--cannot be overloaded.
syn match   tsDelimiter  "\[\|\]\|(\|)\|,\|;\|_\|{\|}"

" Strings and constants
syn match   tsSpecialCha  contained "\\\([0-9]\+\|o[0-7]\+\|x[0-9a-fA-F]\+\|[\"\\'&\\abfnrtv]\|^[A-Z^_\[\\\]]\)"
syn match   tsSpecialCha  contained "\\\(NUL\|SOH\|STX\|ETX\|EOT\|ENQ\|ACK\|BEL\|BS\|HT\|LF\|VT\|FF\|CR\|SO\|SI\|DLE\|DC1\|DC2\|DC3\|DC4\|NAK\|SYN\|ETB\|CAN\|EM\|SUB\|ESC\|FS\|GS\|RS\|US\|SP\|DEL\)"
syn match   tsSpecialCha  contained "\\&\|'''\+"
syn region  tsString      start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=hsSpecialChar
syn match   tsCharacter   "[^a-zA-Z0-9_']'\([^\\]\|\\[^']\+\|\\'\)'"lc=1 contains=hsSpecialChar,hsSpecialCharError
syn match   tsCharacter   "^'\([^\\]\|\\[^']\+\|\\'\)'" contains=hsSpecialChar,hsSpecialCharError
syn match   tsNumber      "\<[0-9]\+\>\|\<0[xX][0-9a-fA-F]\+\>\|\<0[oO][0-7]\+\>"
syn match   tsFloat       "\<[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"
syn match   tsConstant    "()"
syn keyword tsConstant    true false
syn keyword tsInclude     include define
syn keyword tsConditional if then else when switch
syn keyword tsOperator    nav value label error external asm to classify declassify as
syn keyword tsStructure   AVAIL RDONLY UNAVAIL ALLOC inline cconv U L FP LFP MEMORY Int Word LWord
syn keyword tsStructure   provide sizeof atomtag type newtype extern var array fun gate new take in out
syn keyword tsStructure   asm
syn keyword tsStatement   while do goto return bracket label

" Comments
syn match   tsLineComment      "///*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
syn region  tsBlockComment     start="/\*"  end="\*/" contains=tsBlockComment

hi def link tsConSym              Operator
hi def link tsVarSym              Operator
hi def link tsDelimiter           Delimiter
hi def link tsSpecialChar         SpecialChar
hi def link tsSpecialCharError    Error
hi def link tsString              String
hi def link tsCharacter           Character
hi def link tsNumber              Number
hi def link tsFloat               Float
hi def link tsConstant            Constant
hi def link tsInclude             Include
hi def link tsConditional         Conditional
hi def link tsOperator            Operator
hi def link tsStructure           Structure
hi def link tsStatement           Statement
hi def link tsLineComment         Comment
hi def link tsBlockComment        Comment

let b:current_syntax = "tempest"

