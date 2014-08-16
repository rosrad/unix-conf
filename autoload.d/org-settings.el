;;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-log-done nil)

(add-hook 'org-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-n") 'org-insert-subheading)
             (local-set-key (kbd "C-c C-x t") 'org-toggle-link-display)
             (local-set-key (kbd "C-x t d") 'org-table-delete-column)
             (local-set-key (kbd "C-x t i") 'org-table-insert-column)
             ))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-agenda-files (list
                        "~/org/research.org"
                        "~/org/life.org"
                        "~/org/work.org"
                        "~/org/lab.org" 
                        ))


;; for the org to latex
;; this is just inserted into the latex file
(require 'org-latex-settings)
(require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://rosrad.wordpress.com/xmlrpc.php"
         :username "rosrad"
         :default-title "[Speech]"
         :default-categories ("Speech" "Technology")
         :Tags-As-Categories Nil)
        ))

(global-set-key (kbd "C-c w n") 'org2blog/wp-new-entry)
(global-set-key (kbd "C-c w C-p") 'org2blog/wp-post-buffer)
(global-set-key (kbd "C-c w p") 'org2blog/wp-post-buffer-and-publish)



