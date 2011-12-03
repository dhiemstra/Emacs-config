;; Basic settings
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on) ;; Shell mode colors
(setq make-backup-files         nil)                       ;; Don't create backup files
(auto-save-mode -1)

(global-font-lock-mode 1)
(setq transient-mark-mode t)        ; highlight text selection
(setq-default indent-tabs-mode nil) ; spaces when indenting code
(setq inhibit-startup-message t)    ; no splash screen
(fset 'yes-or-no-p 'y-or-n-p)       ; replace y-e-s by y
(global-linum-mode 1)               ; enable line numbers

;; emacs git integration
(add-to-list 'load-path "~/Emacs/include/magit")
(require 'magit)

(add-to-list 'load-path "~/Emacs/include/textmate")
(require 'textmate)
(textmate-mode)

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
