
(setq de-emacs-init-file
      (or load-file-name buffer-file-name))
(setq de-emacs-config-directory
      (file-name-directory de-emacs-init-file))

(setq de-init-directory
      (expand-file-name "init.d/" de-emacs-config-directory))
(defun load-init-files (filelist)
  (dolist (file filelist)
    (load (expand-file-name 
       (concat de-init-directory file ".el")))
    (message "Loaded initial config file:%s" file)
    ))
(load-init-files '("custom-functions"
		   "general-settings"
		   "el-get-settings"
		   ))
(add-to-list 'load-path "~/.emacs.d/settings.d/")
(setq de-settings-directory
      (expand-file-name "autoload.d" de-emacs-config-directory))
(dolist (file (directory-files de-settings-directory t "\\.el$"))
  (load file))

(put 'upcase-region 'disabled nil)
