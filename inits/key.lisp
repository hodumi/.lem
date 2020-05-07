(defpackage #:lem-my-init/key
  (:use #:cl
        #:lem))
(in-package #:lem-my-init/key)

; prev/next page
(define-key lem:*global-keymap* "M-p" 'lem:previous-page)
(define-key lem:*global-keymap* "M-n" 'lem:next-page)


(define-key lem:*global-keymap* "M-h" 'lem:backward-delete-word)

;(define-key lem:*global-keymap* "@ @" )
(define-key lem:*global-keymap* "@ k" 'lem:kill-buffer)
(define-key lem:*global-keymap* "@ b" 'lem:select-buffer)
(define-key lem:*global-keymap* "@ o" 'lem:other-window)

(define-key lem:*global-keymap* "@ 2" 'lem:split-active-window-vertically)
(define-key lem:*global-keymap* "@ 3" 'lem:split-active-window-horizontally)
(define-key lem:*global-keymap* "@ 0" 'lem:delete-current-window)

