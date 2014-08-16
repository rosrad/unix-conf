;;-----------;
;;; LaTeX ;;;
;;-----------;

(include-plugin "auctex")               ;;this is very important

(load "auctex.el" -1 1 1)
(load "preview-latex.el" -1 1 1)
(load "auctex.el" nil t t)
(require 'tex-mik)
(setq TeX-default-mode 'japanese-latex-mode)
(setq TeX-PDF-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq-default TeX-master nil)
;; remove all tabs before saving
;; use xelatex default
;; (add-hook 'LaTeX-mode-hook
;;           (lambda ()
;;             (setq TeX-auto-untabify t    
;;                   TeX-engine 'xetex)))      

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(eval-after-load "tex"
  '(add-to-list 'TeX-command-list
                '("Html" "ew3m ../html/%s/%s.html" TeX-run-command t t :help "ew3m ../html/%s/%s.html") t))
(eval-after-load "tex"
  '(add-to-list 'TeX-command-list
                '("Tex2Html" "tex2html %s" TeX-run-command t t :help "tex2html %s") t))

(require 'auto-complete-auctex)
(provide 'latex-settings)
