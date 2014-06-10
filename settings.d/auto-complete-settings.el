;-------------------;
;;; Auto-Complete ;;;
;-------------------;


(require 'auto-complete) 
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config) 
(ac-config-default)
(global-auto-complete-mode t)
;;config for the auto complete
(setq ac-use-fuzzy t)
;; settings for the menu map
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(set-face-background 'ac-candidate-face "white")
(set-face-background 'ac-selection-face "magenta")
(set-face-foreground  'ac-candidate-face "green")
(add-to-list 'ac-dictionary-files "~/.emacs.d/ac-dict")

(provide 'auto-complete-settings)
