let g:deoplete#enable_at_startup = 1

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#omni#input_patterns = get(g:, 'deoplete#omni#input_patterns', {})
let g:deoplete#omni_patterns = get(g:, 'deoplete#omni_patterns', {})

let g:deoplete#sources = {}
let g:deoplete#ignore_sources.javascript = get(g:deoplete#ignore_sources, 'javascript', ['omni'])
call deoplete#custom#set('ternjs', 'mark', 'tern')
call deoplete#custom#set('ternjs', 'rank', 9999)

let g:deoplete#omni_patterns.lua = '.'

call deoplete#custom#set('clang2', 'mark', '')
let g:deoplete#ignore_sources.c = ['omni']

let g:deoplete#ignore_sources.rust = ['omni']
call deoplete#custom#set('racer', 'mark', '')

call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
let g:deoplete#ignore_sources._ = ['around']
