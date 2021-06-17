(tool-bar-mode -1) ;; hide the toolbar
(global-display-line-numbers-mode) ;; show line numbers
(global-hl-line-mode +1) ;; highlight the current line

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

;; functions to move the current line up or down
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control super up)]  'move-line-up)
(global-set-key [(control super down)]  'move-line-down)

;; Go
(use-package go-mode
  :ensure t)
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; Find PATH changes on the shell
(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(exec-path-from-shell go-mode acme-theme which-key use-package try)))
