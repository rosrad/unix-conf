;; should only loaded by the org-latex-settings.el


(add-to-list 'org-latex-classes
             '("rosrad-article"
               "\\documentclass[12pt]{article}
                \\usepackage[utf8]{inputenc}
                \\usepackage[T1]{fontenc}
                \\usepackage{color}
                [NO-DEFAULT-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
(add-to-list 'org-latex-classes
             '("org-article"
               "\\documentclass[11pt,a4paper]{article}
	           \\usepackage[T1]{fontenc}
	           \\usepackage{fontspec}
	           \\usepackage{graphicx} 
	           \\defaultfontfeatures{Mapping=tex-text}
	           \\setromanfont{Gentium}
	           \\setromanfont [BoldFont={Gentium Basic Bold},
	                           ItalicFont={Gentium Basic Italic}]{Gentium Basic}
	           \\setsansfont{Charis SIL}
	           \\setmonofont[Scale=0.8]{DejaVu Sans Mono}
	           \\usepackage{geometry}
	           \\geometry{a4paper, textwidth=6.5in, textheight=10in,
	                       marginparsep=7pt, marginparwidth=.6in}
	           \\pagestyle{empty}
	           \\title{}
               [NO-DEFAULT-PACKAGES]
               [NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
(provide 'org-latex-tpl)

