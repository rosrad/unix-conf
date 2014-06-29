;---------------;
;;; Utilities ;;;
;---------------;

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
;(nyan-mode 1)

;;mark-multiple
(require 'multiple-cursors)
(global-unset-key (kbd "C-x m"))
(global-set-key (kbd "C-x m a") 'mc/mark-all-dwim)
(global-set-key (kbd "C-x m w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-x C-m w") 'mc/mark-next-words-like-this)
(global-set-key (kbd "C-x m s") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-x C-m s") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "C-x m l") 'mc/edit-lines)

; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
