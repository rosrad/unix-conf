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

;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
