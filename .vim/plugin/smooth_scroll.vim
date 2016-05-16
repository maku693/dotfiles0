" Smooth Scroll
" [original] http://www.vim.org/scripts/script.php?script_id=1601
"
" The global variable g:scroll_factor changes the scroll speed.
"
let g:scroll_factor = 5000
function! SmoothScroll(dir, windiv, factor)
    let wh=winheight(0)
    let i=0
    while i < wh / a:windiv
        let t1=reltime()
        let i = i + 1
        if a:dir=="d"
            normal j
        else
            normal k
        end
        redraw
        while 1
            let t2=reltime(t1,reltime())
            if t2[1] > g:scroll_factor * a:factor
                break
            endif
        endwhile
    endwhile
endfunction
map  :call SmoothScroll("d", 2, 2)
map  :call SmoothScroll("u", 2, 2)
map  :call SmoothScroll("d", 1, 1)
map  :call SmoothScroll("u", 1, 1)
