;; set the el-get path, and create it if it doesn't exist
;; path to where plugins are kept

(setq plugin-path "~/.emacs.d/plugins/")
(setq elget-path plugin-path)
(unless (file-exists-p elget-path)
  (make-directory elget-path))
;; add el-get to the load path, and install it if it doesn't exist
;; (include-plugin "el-get")
(add-to-list 'load-path "~/.emacs.d/el-get/")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp))
  )

;; packages to install
(setq 
 my-packages '(
               ;; auctex
               auto-complete
               color-theme-solarized
               ein
               magit
               markdown-mode
               matlab-mode
               js2-mode
               ;;nxhtml
               ztree
               pydoc-info
               scss-mode
               python-mode
               ipython-mode
               pymacs
               ropemacs
               popup
               jedi
               ;; nyan-mode
               ;; flycheck
               key-chord
               go-flymake
               go-autocomplete
               wacspace
               revive-plus
               yasnippet
               yasnippet-snippets
               auto-complete-yasnippet
               multi-term
               multiple-cursors
               ;; visible-mark
               show-marks
               helm
               helm-descbinds
               highlight-current-line
               fill-column-indicator
               google-translate
               youdao-dict
               ;; google-this
               basic-edit-toolkit
               emacs-w3m
               org2blog
               auto-complete-auctex
               ;; w3m-session
               ;; w3m-type-ahead
               ))
;; first enable shallow clone, so we don't need to clone the entire
;; history of every project
(setq el-get-git-shallow-clone t)

;; then intsall!
(el-get 'sync my-packages)

(provide 'el-get-settings)

