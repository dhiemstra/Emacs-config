;; Start server
(server-start)

;; Basic settings
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on) ;; Shell mode colors
(setq make-backup-files nil)
(auto-save-mode -1)
(setq auto-save-default nil)

(global-font-lock-mode 1)
(setq transient-mark-mode t)        ; highlight text selection
(setq-default indent-tabs-mode nil) ; spaces when indenting code
(setq inhibit-startup-message t)    ; no splash screen
(fset 'yes-or-no-p 'y-or-n-p)       ; replace y-e-s by y
(global-linum-mode 1)               ; enable line numbers
(tabbar-mode -1)

;; Fonts
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Inconsolata-14"))

;; Fontify current frame
(fontify-frame nil)

;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; Load viper mode
(defun init-viper ()
  (setq viper-mode t)
  (require 'viper))

(add-hook 'emacs-startup-hook 'init-viper)

;; turn off the toolbar, scrollbar, fringe; keep the tab bar
;; (tabbar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; emacs git integration
(add-to-list 'load-path "~/Emacs/include/magit")
(require 'magit)

(add-to-list 'load-path "~/Emacs/include/textmate")
(require 'textmate)
(textmate-mode)

;; helm
(add-to-list 'load-path "~/Emacs/include/helm")
(require 'helm-config)
(require 'helm-match-plugin)
(require 'helm-buffers)
(require 'helm-files)
(require 'helm-project-files)

(defun helm-current-dir ()
  (interactive)
  (helm '(helm-c-source-files-in-current-dir)))

;; "wrap" long lines
(setq-default truncate-lines 0)
(setq-default truncate-partial-width-windows 0)

;; scrolling
(setq scroll-step 1)
(setq scroll-margin 4)
(put 'downcase-region 'disabled nil)
(setq require-final-newline 1)      ; ask if final newline should be added

;; yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; haml mode
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml" . haml-mode))

;; css
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\.erb$" . css-mode))
(setq css-indent-offset 2)

;; coffee
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(setq coffee-tab-width 2)
