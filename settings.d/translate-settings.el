;settings for google-translate
(require 'google-translate)
(require 'google-translate-smooth-ui)

;(global-set-key (kbd "C-c t") 'google-translate-smooth-translate)
(setq google-translate-translation-directions-alist
      '(("en" . "zh-CN") ("zh-CN" . "en")))
(setq google-translate-enable-ido-completion t)
(setq google-translate-show-phonetic t)
(set-face-attribute 'google-translate-translation-face nil :height 1.4)

;; now I am using the youdao dict for search word
;; for youdao-dict
(global-set-key (kbd "C-c t") 'youdao-dict)
(require 'youdao-dict)






(provide translate-settings)


