" extra file types
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.jspx   setfiletype jsp
    au! BufRead,BufNewFile *.tag    setfiletype jsp
augroup END

