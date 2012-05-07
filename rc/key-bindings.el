;; Disable C-x C-c
(defun dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

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
(global-set-key "\M-t" 'helm-mini)

(windmove-default-keybindings)

(defvar *personal-mode-map*
  (let ((map (make-sparse-keymap)))
;;    (define-key map (kbd "A-t") 'helm-mini)
    (define-key map (kbd "A-t") 'helm-project-files-find)
    map))

(define-minor-mode personal-mode
  "This minor mode contains my personal settings"
  :lighter " pers" :global t :keymap *personal-mode-map*)

(personal-mode)
