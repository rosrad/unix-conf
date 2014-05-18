
(setq de-emacs-init-file
      (or load-file-name buffer-file-name))
(setq de-emacs-config-directory
      (file-name-directory de-emacs-init-file))
(setq de-init-directory
      (expand-file-name "init.d" de-emacs-config-directory))
(setq de-vendor-directory
      (expand-file-name "vendor" de-emacs-config-directory))

(dolist (file (directory-files de-init-directory t "\\.el$"))
  (load file))
(put 'upcase-region 'disabled nil)
