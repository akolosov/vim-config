if exists('loaded_gundo')
    " open on the right so as not to compete with the nerdtree
    let g:gundo_right = 1 

    " a little wider for wider screens
    let g:gundo_width = 60
elseif exists('g:loaded_undotree')
    let g:undotree_WindowLayout = 3
end
