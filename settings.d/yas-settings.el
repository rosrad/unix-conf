(require 'yasnippet)
(yas-global-mode 1)
(add-hook 'term-mode-hook (lambda()
                            (setq yas-dont-activate t)))
