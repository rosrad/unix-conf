(require 'wacspace)
(wacs-set-up-prefix)

(when (fboundp 'winner-mode) ; this is used for back to your window configure
      (winner-mode 1))

(require 'revive+)
(setq revive-plus:all-frames t)
(revive-plus:demo)
;(add-hook 'auto-save-hook #'(lambda () (call-interactively #'desktop-save)))
