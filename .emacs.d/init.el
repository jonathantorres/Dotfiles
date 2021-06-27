(tool-bar-mode -1) ;; hide the toolbar
(global-display-line-numbers-mode) ;; show line numbers
(global-hl-line-mode +1) ;; highlight the current line
(electric-pair-mode 1) ;; auto close bracket insertion
(show-paren-mode t) ;; show matching parens/brackets

(setq-default indent-tabs-mode nil) ;; no tabs for indentation
;; set tab width to 4 spaces
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

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

(use-package neotree
  :ensure t)

;; Set default font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Consolas")))))

;; enable the acme color theme
;; (use-package acme-theme
;;   :ensure t
;;   :config
;;   (load-theme 'acme t))

;; enable the zenburn theme (dark theme)
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

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

;; open neotree sidebar
(global-set-key [(control shift b)] 'neotree-toggle)

;; delete the current line from anywhere on the line
(defun delete-line ()
  "Delete the current line"
  (interactive)
  (move-beginning-of-line nil)
  (kill-line)
  (kill-line))

(global-set-key [(control shift k)] 'delete-line)

;; Go
(use-package go-mode
  :ensure t)
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; Find PATH changes on the shell
(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

;; Ivy/Swiper
(use-package counsel
  :ensure t)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

;; For M-x history
(use-package smex
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ample-theme zenburn-theme neotree exec-path-from-shell go-mode acme-theme which-key use-package try)))
