(require 'yasnippet)
(yas-global-mode 1)
(add-hook 'term-mode-hook (lambda()
                            (setq yas-dont-activate t)))
;; Let's have snippets in the auto-complete dropdown
(add-to-list 'auto-mode-alist '("yas/.*" . snippet-mode))
(setq yas/root-directory "~/.emacs.d/plugins/yasnippet-snippets/")
(yas/load-directory yas/root-directory)
(provide 'yas-settings)


