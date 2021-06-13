(tool-bar-mode -1) ;; hide the toolbar
(global-display-line-numbers-mode) ;; show line numbers

;; initialize the package manager
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; initialize 'use-package
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

;; try packages without installing them
(use-package try
	:ensure t)

;; completion for C-x
(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

;; Set default font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 140 :family "Consolas")))))

;; enable the acme color theme
(use-package acme-theme
  :ensure t
  :config
  (load-theme 'acme t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(acme-theme which-key use-package try)))
