;for golang code
(require 'go-mode)
(require 'go-flycheck)
(require 'go-autocomplete)




(load "/home/14/ren/source/golang/go/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")
(add-hook 'go-mode-hook 'go-oracle-mode)

(add-hook 'go-mode-hook (lambda ()
                           (yas-minor-mode)))
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-g") 'go-goto-imports)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-f") 'gofmt)))
(add-hook 'go-mode-hook (lambda ()
                           (local-set-key (kbd "C-c C-k") 'godoc)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))
