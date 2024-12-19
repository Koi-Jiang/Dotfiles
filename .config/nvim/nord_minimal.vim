let g:airline#themes#nord_minimal#palette = {}
let s:gui00 = '#2e3440'
let s:gui01 = '#3b4252'
let s:gui02 = '#434c5e'
let s:gui03 = '#4c566a'
let s:gui04 = '#d8dee9'
let s:gui05 = '#e5e9f0'
let s:gui06 = '#eceff4'
let s:gui07 = '#8fbcbb'
let s:gui08 = '#88c0d0'
let s:gui09 = '#81a1c1'
let s:gui0A = '#5e81ac'
let s:gui0B = '#bf616a'
let s:gui0C = '#d08770'
let s:gui0D = '#ebcb8b'
let s:gui0E = '#a3be8c'
let s:gui0F = '#b48ead'

let s:cterm00 = 0
let s:cterm01 = 0
let s:cterm02 = 59
let s:cterm03 = 102
let s:cterm04 = 145
let s:cterm05 = 188
let s:cterm06 = 253
let s:cterm07 = 15
let s:cterm08 = 166
let s:cterm09 = 203
let s:cterm0A = 214
let s:cterm0B = 29
let s:cterm0C = 12
let s:cterm0D = 12
let s:cterm0E = 134
let s:cterm0F = 12

let s:Warning = [ s:gui03, s:gui0D, s:cterm09, s:cterm02 ]
let s:Error = [ s:gui06, s:gui0B, s:cterm09, s:cterm02 ]

let s:Normal = [ s:gui09, s:gui02, s:cterm09, s:cterm02 ]

let g:airline#themes#nord_minimal#palette.normal = {
	\ 'airline_a': s:Normal,
	\ 'airline_b': s:Normal,
	\ 'airline_c': s:Normal,
	\ 'airline_x': s:Normal,
	\ 'airline_y': s:Normal,
	\ 'airline_z': s:Normal,
	\ 'airline_warning': s:Warning,
	\ 'airline_error': s:Error
\ }

let s:Insert   = [ s:gui06, s:gui0C, s:cterm09, s:cterm02 ]
let g:airline#themes#nord_minimal#palette.insert = {
	\ 'airline_a': s:Insert,
	\ 'airline_b': s:Normal,
	\ 'airline_c': s:Normal,
	\ 'airline_x': s:Normal,
	\ 'airline_y': s:Normal,
	\ 'airline_z': s:Normal,
	\ 'airline_warning': s:Warning,
	\ 'airline_error': s:Error
\ }

let s:Replace   = [ s:gui06, s:gui0B, s:cterm09, s:cterm02 ]
let g:airline#themes#nord_minimal#palette.replace = {
	\ 'airline_a': s:Replace,
	\ 'airline_b': s:Normal,
	\ 'airline_c': s:Normal,
	\ 'airline_x': s:Normal,
	\ 'airline_y': s:Normal,
	\ 'airline_z': s:Normal,
	\ 'airline_warning': s:Warning,
	\ 'airline_error': s:Error
\ }

let s:Visual   = [ s:gui06, s:gui0F, s:cterm09, s:cterm02 ]
let g:airline#themes#nord_minimal#palette.visual = {
	\ 'airline_a': s:Visual,
	\ 'airline_b': s:Normal,
	\ 'airline_c': s:Normal,
	\ 'airline_x': s:Normal,
	\ 'airline_y': s:Normal,
	\ 'airline_z': s:Normal,
	\ 'airline_warning': s:Warning,
	\ 'airline_error': s:Error
\ }

let g:airline#themes#nord_minimal#palette.inactive = {
	\ 'airline_a': s:Normal,
	\ 'airline_b': s:Normal,
	\ 'airline_c': s:Normal,
	\ 'airline_x': s:Normal,
	\ 'airline_y': s:Normal,
	\ 'airline_z': s:Normal,
	\ 'airline_warning': s:Warning,
	\ 'airline_error': s:Error
\ }

