(global-linum-mode t)
(desktop-save-mode 1)
 (add-to-list 'command-switch-alist '("(make-frame-visible)" .
                 (lambda (s))))
(require 'server)
(unless (server-running-p)
    (server-start))
;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(add-to-list 'load-path "/home/14/ren/source/el/s")
;(require 's)
(add-to-list 'load-path "/home/14/ren/source/el/f")

(add-to-list 'load-path "/home/14/ren/source/c++/rtags/src")
(require 'rtags)
(rtags-enable-standard-keybindings c-mode-base-map)
;(autoload 'rtags-mode "rtags" "rtags-mode." t)
;(eval-after-load "rtags-mode" '(rtags-enable-standard-keybindings c-mode-base-map))

(add-to-list 'load-path "/home/14/ren/source/el/emacs-bash-completion")
(autoload 'bash-completion-dynamic-complete 
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
  'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
  'bash-completion-dynamic-complete)

(add-to-list 'load-path "~/source/golang/gocode/emacs")
(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
;;config for the auto complete
(setq ac-use-fuzzy t)
;; settings for the menu map
(setq ac-use-menu-map t)
(setq global-auto-complete-mode t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(set-face-background 'ac-candidate-face "white")
(set-face-background 'ac-selection-face "magenta")
(set-face-foreground  'ac-candidate-face "green")
(add-to-list 'ac-modes 'go-mode)
(add-to-list 'ac-modes 'octave-mode)
(add-to-list 'ac-modes 'matlab-mode)
(add-to-list 'ac-dictionary-files "~/.emacs.d/ac-dict")
(require 'go-autocomplete)

(ac-config-default)


(add-to-list 'load-path "~/source/el/dash")
(add-to-list 'load-path "~/source/el/wacspace")
(require 'wacspace)
(wacs-set-up-prefix)
(global-set-key (kbd "C-x p") 'wacs-prefix-map)


(add-to-list 'load-path "~/source/el/revive")
(add-to-list 'load-path "~/source/el/revive-plus")
(require 'revive+)
(setq revive-plus:all-frames t)
(revive-plus:demo)

(add-to-list 'load-path "~/source/golang/go/misc/emacs")
(autoload 'go-mode "go-mode-load" "go-mode." t)

(add-to-list 'load-path "~/source/el/flycheck/")
(add-to-list 'load-path "~/source/el/goflymake/")
(require 'go-flycheck)
(require 'go-flymake)
(require 'flycheck)
;(autoload 'go-flymake "go-flymake" "Go flymake" t)
;(autoload 'go-flycheck "go-flycheck" "Go flycheck" t)
;(autoload 'flycheck "flycheck" "flycheck" t)
;(autoload 'go-mode-load)

(add-to-list 'load-path "~/source/el/yasnippet")
;(setq yas-snippet-dirs "~/.emacs.d/plugins/yasnippet/")
(setq yas-snippet-dirs '("~/source/el/yasnippet/snippets"))

(add-to-list 'yas-snippet-dirs "source/el/yasnippet-go")
(require 'yasnippet)
(yas-global-mode 1)

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(add-hook 'Latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(load-file "~/source/el/cedet-1.1/common/cedet.el")
(add-to-list 'load-path "~/source/el/cedet-1.1/semantic")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            

;; Setting up matlab-mode
;; Replace path below to be where your matlab.el file is.
(add-to-list 'load-path "~/source/el/matlab-emacs")
(load-library "matlab-load")
(add-to-list 'auto-mode-alist '("\\.m\\'" . matlab-mode))
;; Enable CEDET feature support for MATLAB code. (Optional)
(matlab-cedet-setup)

;; octave-mode
;;(autoload 'octave-mode "octave-mode" "Loding octave-mode" t)
;;(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))






(add-to-list 'load-path "~/local/share/emacs/site-lisp")
(require 'magit)

(add-to-list 'load-path "~/source/el/cl-lib/")
(require 'cl-lib)
