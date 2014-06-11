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
(global-set-key (kbd "C-c a") 'mc/mark-all-dwim)
(global-set-key (kbd "C-c s") 'mc/edit-lines)
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
