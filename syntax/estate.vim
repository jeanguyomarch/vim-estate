" Vim syntax file
" Language: Estate
" Maintainer: Jean Guyomarc'h
" Last Change: 2015 08 24

" For version 5.x: Clear all syntax items
" Greater than 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

syn sync fromstart

syn keyword estBlock transitions model states enterer exiter cb

syn keyword estLabel func data contained
syn match estLabelMatch "\w\+:" contains=estLabel

syn match estDecl "@init"

syn keyword estTodo contained TODO FIXME XXX NOTE
syn cluster estTodoGroup contains=estTodo

syn match estCommentLine /\/\/.*$/ contains=@estTodoGroup
syn region estCommentLines start="\/\*" end="\*\/" contains=@estTodoGroup
syn match estCommentLines /\/\*.*\*\//

syn match estTransit "\->"
syn match estTransit ">"

hi def link estBlock            StorageClass
hi def link estLabel            Label
hi def link estDecl             Constant
hi def link estCommentLine      Comment
hi def link estCommentLines     Comment
hi def link estTodo             Todo
hi def link estTransit          Identifier

let b:current_syntax = "est"

