(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

;; switch meta and super key (set command to meta key)
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(toggle-scroll-bar -1)
(tool-bar-mode -1)

(require 'use-package)

(use-package smartparens
  :ensure t)  

(use-package evil
  :ensure t
  :config
  (global-set-key (kbd "C-w") 'evil-delete-backward-word))

(use-package company :ensure t)

(use-package tuareg
  :ensure t)

(use-package utop
  :ensure t)

(use-package merlin
  :ensure t)

(use-package magit
  :ensure t)
