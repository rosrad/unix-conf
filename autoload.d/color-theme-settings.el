;-----------------;
;;; Color Theme ;;;
;-----------------;

; use the "Subtle Hacker" color theme as a base for the custom scheme
(require 'color-theme-solarized)
(color-theme-solarized-light)
(custom-set-faces
;;  '(default ((t (:inherit nil :stipple nil :background "grey30" :foreground "white smoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
;; ;;  ;; '(border ((t nil)))
;; ;;  ;; '(cursor ((t (:background "firebrick1" :foreground "black"))))
;;  '(font-lock-comment-face ((t (:foreground "light green"))))
;;  '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :weight ultra-bold)) (((class color) (min-colors 0)) nil)))

;; ;;  '(font-lock-doc-face ((t (:foreground "tomato" :slant italic))))
;; ;;  '(font-lock-function-name-face ((t (:foreground "deep sky blue" :underline t :weight bold))))
;;  '(font-lock-keyword-face ((t (:foreground "violet" :weight bold))))
;;  '(font-lock-string-face ((t (:foreground "green" :slant italic))))
;; ;;  ;; '(fringe ((nil (:background "black"))))
;; ;;  ;; '(highlight ((t (:background "khaki1" :foreground "black" :box (:line-width -1 :color "firebrick1")))))
;; ;;  ;; '(highlight-current-line-face ((t (:inherit highlight))))
;; ;;  ;; '(lazy-highlight ((t (:background "paleturquoise" :foreground "black"))))
;; ;;  ;; '(link ((t (:foreground "DodgerBlue3" :underline t))))
;; ;;  ;; '(menu ((t (:background "gray2" :foreground "#FFF991"))))
 '(minibuffer-prompt ((t (:foreground "violet"))))
 '(mode-line ((t (:background "yellow" ))))
 '(mode-line-buffer-id ((t (:foreground "red"))))
 '(mode-line-highlight ((((class color) (min-colors 125)) nil)))
 '(mode-line-inactive ((t (:background "white"))))
 )
;; ;;  ;; '(mouse ((t (:background "Grey" :foreground "black"))))
;; ;;  '(trailing-whitespace ((((class color) (background dark)) (:background "firebrick1")))))



(provide 'color-theme-settings)




































