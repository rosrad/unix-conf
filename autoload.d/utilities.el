;; ---------------;
;; Utilities ;;;
;; ---------------;

;; for fly check feature
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
;; Git

(require 'magit)

;; Popup

(require 'popup)

;; Websocket

(require 'websocket)

;; Request

(require 'request)

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Nyancat mode!
;; (nyan-mode 1)

;;mark-multiple
(require 'multiple-cursors)
(global-unset-key (kbd "C-x m"))
(global-set-key (kbd "C-x m a") 'mc/mark-all-dwim)
(global-set-key (kbd "C-x m w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-x C-m w") 'mc/mark-next-words-like-this)
(global-set-key (kbd "C-x m s") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-x C-m s") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "C-x m l") 'mc/edit-lines)

;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Enable js2-mode
(require 'js2-mode)
;; using the js2-mode as a minor-mode of the original js-mode
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)
;; this is used to  disable flymake for html which will use flymake-xml-init to check
(defun flymake-xml-init ())
;; (define-key js-mode-map "{" 'paredit-open-curly)
;; (define-key js-mode-map "}" 'paredit-close-curly-and-newline)

;; make the set-mark-command more easier
(setq set-mark-command-repeat-pop -1)
