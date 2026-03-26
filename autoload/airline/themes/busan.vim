" Busan airline theme

let s:base = '#010313'
let s:beach = '#007EDA'
let s:gold = '#EFB908'
let s:dongbaek = '#CE7B68'
let s:leaf = '#889E05'
let s:horison = '#AC4712'
let s:mackerel = '#596B92'
let s:wakame = '#2C2A11'
let s:text = '#BDC1BB'

let s:N1 = [ s:base, s:beach, 0, 4, 'bold' ]
let s:N2 = [ s:text, s:wakame, 7, 0, '' ]
let s:N3 = [ s:text, s:base, 7, 0, '' ]
let g:airline#themes#busan#palette = {}
let g:airline#themes#busan#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1 = [ s:base, s:leaf, 0, 2, 'bold' ]
let s:I2 = [ s:text, s:wakame, 7, 0, '' ]
let s:I3 = [ s:text, s:base, 7, 0, '' ]
let g:airline#themes#busan#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:V1 = [ s:base, s:dongbaek, 0, 5, 'bold' ]
let s:V2 = [ s:text, s:wakame, 7, 0, '' ]
let s:V3 = [ s:text, s:base, 7, 0, '' ]
let g:airline#themes#busan#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:R1 = [ s:base, s:horison, 0, 1, 'bold' ]
let s:R2 = [ s:text, s:wakame, 7, 0, '' ]
let s:R3 = [ s:text, s:base, 7, 0, '' ]
let g:airline#themes#busan#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:C1 = [ s:base, s:gold, 0, 3, 'bold' ]
let s:C2 = [ s:text, s:wakame, 7, 0, '' ]
let s:C3 = [ s:text, s:base, 7, 0, '' ]
let g:airline#themes#busan#palette.commandline = airline#themes#generate_color_map(s:C1, s:C2, s:C3)

let s:IA = [ s:mackerel, s:base, 8, 0, '' ]
let s:IB = [ s:mackerel, s:base, 8, 0, '' ]
let s:IC = [ s:mackerel, s:base, 8, 0, '' ]
let g:airline#themes#busan#palette.inactive = airline#themes#generate_color_map(s:IA, s:IB, s:IC)

let g:airline#themes#busan#palette.accents = {
      \ 'red': [ s:horison, '', 1, '', '' ],
      \ }
