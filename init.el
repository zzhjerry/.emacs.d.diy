(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; switch meta and super key (set command to meta key)
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(require 'use-package)

(use-package smartparens
  :ensure t
  :config
  (smartparens-mode 1))

(use-package evil
  :ensure t
  :config
  (global-set-key (kbd "C-w") 'evil-delete-backward-word))
