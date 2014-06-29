;; this is a config file for w3m browser

(require 'w3m-extension)


(setq browse-url-browser-function 'w3m-browse-url browse-url-new-window-flag t)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key (kbd "C-c m") 'browse-url-at-point)

(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)
;; (require 'w3m)
;; (require 'w3m-type-ahead)
;; (require 'w3m-session)
