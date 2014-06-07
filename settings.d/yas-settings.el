(require 'yasnippet)
(yas-global-mode 1)
(add-hook 'term-mode-hook (lambda()
                            (setq yas-dont-activate t)))
;; Let's have snippets in the auto-complete dropdown
(require 'auto-complete-yasnippet)
(add-to-list 'auto-mode-alist '("yas/.*" . snippet-mode))
(setq yas-snippet-dirs '("~/.emacs.d/plugins/yasnippet/snippets"))
