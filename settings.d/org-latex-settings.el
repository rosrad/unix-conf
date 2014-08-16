;;;
(require 'org-latex)  
;;;
;; (setq org-export-latex-listings t)

;; (add-to-list 'org-export-latex-packages-alist '("" "listings"))
;; (add-to-list 'org-export-latex-packages-alist '("" "color"))

(require 'org-latex-tpl)

(setq org-latex-to-pdf-process 
      '("xelatex -interaction nonstopmode %f"
        "xelatex -interaction nonstopmode %f"))
(provide 'org-latex-settings)





