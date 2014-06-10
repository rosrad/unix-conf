;------------;
;;; Cursor ;;;
;------------;

; highlight the current line
;(require 'highlight-current-line)
;(global-hl-line-mode t)
;(setq highlight-current-line-globally t)
;(setq highlight-current-line-high-faces nil)
;(setq highlight-current-line-whole-line nil)
;(setq hl-line-face (quote highlight))

; don't blink the cursor
(blink-cursor-mode nil)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode t)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

(provide 'cursor-settings)
