let g:deoplete#enable_at_startup = 1

" let g:deoplete#enable_camel_case = 1
" Use smartcase.
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#auto_complete_delay = 0
" let g:deoplete#auto_complete_start_length = 1

" <BS>: close popup and delete backword char.
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
