;; Disable C-x C-c
(defun dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

;; Load viper mode
(defun init-viper ()
  (setq viper-mode t)
  (require 'viper))

(add-hook 'emacs-startup-hook 'init-viper)

(global-set-key "\C-x\C-c" 'dont-kill-emacs)

(setq woman-use-own-frame nil)     ; don't create new frame for manpages
(setq woman-use-topic-at-point t)  ; don't prompt upon K key (manpage display)

(global-set-key "\C-x\C-b" 'bs-show) ; buffer-list
(global-set-key "\C-cg" 'goto-line)
;; (global-set-key [f5] 'viper-change-state-to-vi)
;; (global-set-key [f6] 'viper-change-state-to-emacs)
(global-set-key [?\C--] 'zoom-frm-out)
(global-set-key [?\C-=] 'zoom-frm-in)	 ;
(global-set-key [?\C-0] 'zoom-frm-unzoom) ;

(eval-after-load 'viper
  '(progn
     (setq viper-vi-state-id "<Vi>")
     (setq viper-emacs-state-id "<Emacs>")
     (setq viper-insert-state-id "<Insert>")
     (setq viper-replace-state-id "<Replace>")))

(global-set-key "\M-gs" 'magit-status)

(windmove-default-keybindings)
