;;-----------;
;;; LaTeX ;;;
;;-----------;

(include-plugin "auctex")               ;;this is very important
(load "auctex.el" -1 1 1)
(load "preview-latex.el" -1 1 1)

(load "auctex.el" nil t t)
(require 'tex-mik)
;; (setq TeX-PDF-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook
  (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex)))       ; use xelatex default

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

;; this if someone config for latex, we may use sometime
;; (if (system-is-linux)
;;     (setq TeX-view-program-selection 
;;           (quote (((output-dvi style-pstricks) "dvips and gv") 
;;                   (output-dvi "xdvi") 
;;                   (output-pdf "evince")
;;                   (output-html "xdg-open"))))))
;; always start the server for inverse search
;; (setq-default TeX-source-correlate-start-server 0)

(provide 'latex-settings)
